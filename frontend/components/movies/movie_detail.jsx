import React from 'react';
import { withRouter } from 'react-router';
import Rating from 'react-rating';
import Modal from 'react-modal';
import modalStyle from '../session_form/modal_style';
import ReviewsContainer from '../review/reviews_container';

class MovieDetail extends React.Component{
  constructor(props) {
    super(props);
    this.state = {
      movielistModalOpen: false,
      movielists: this.props.movielists,
      reviews: this.props.reviews
    };

    this.handleInput = this.handleInput.bind(this);
    this.updateMovielist_movies = this.updateMovielist_movies.bind(this);
  }

  componentDidMount(){
    this.props.requestMovieDetail(this.props.params.id);
    this.props.requestReviews(this.props.params.id);
    this.props.requestAllMovielists();
  }

  componentWillReceiveProps(nextProps) {
    if ( !this.props.currentUser && nextProps.currentUser) {
      this.props.requestAllMovielists();
    }
    if ( this.props.movielists !== nextProps.movielists ) {
      this.setState({movielists: nextProps.movielists});
    }
  }

  handleInput(e) {
    const listId = e.target.value;
    let newMovielist_movies = this.state.movielists;
    const idx = newMovielist_movies[listId].movies.indexOf(this.props.movie.id);
    if ( idx === -1 ) {
      newMovielist_movies[listId].movies.push(this.props.movie.id);
    } else {
      newMovielist_movies[listId].movies.splice(idx, 1);
    }
    this.setState({
      movielists: newMovielist_movies
    });
  }

  updateMovielist_movies(e) {
    e.preventDefault();
    Object.values(this.state.movielists).forEach((movielist) => {
      let movie_ids = movielist.movies;
      if ( movie_ids.length === 0) {
        movie_ids = [''];
      }
      this.props.updateMovielist({
        id: movielist.id,
        movie_ids
      });
    });
    this.setState({movielistModalOpen: false});
}

  render(){

  let movielistButton;
  if ( this.props.currentUser ) {
    movielistButton = (
      <button className= 'add-toMovielist' onClick={() => this.setState({movielistModalOpen:true})}>
        Add to Movielists</button>
    );
  } else {
    movielistButton = '';
  }


    const fullstar = <img
      className="icon"
      src="http://res.cloudinary.com/dufjsfgjv/image/upload/v1490030369/star-icon_bnkv7r.png"
      width="12"
      height="12"
      />;

    const emptystar = <img
      className="icon"
      src="http://res.cloudinary.com/dufjsfgjv/image/upload/v1490030471/outline-star-xxl_jbipvt.png"
      width="12"
      height="12"
      />;

    const movie = this.props.movie;
    const movielist_moviesCheckboxes = Object.values(this.state.movielists).map(
      (movielist) => {
        let checked = false;
        if( movielist.movies.includes(movie.id)) {
          checked = true;
        }
        return(
          <div className="checkboxes" key={`${movielist.id}checkboxes`}>
            <label  key={movielist.id}>{movielist.title}:
              <input type='checkbox'
                     name='movielist_movies_ids[]'
                     value={movielist.id}
                     key={movielist.id}
                     checked={checked}
                     onChange={this.handleInput}></input>
            </label>
          </div>
        );
      }
    );

    return(
      <div className='movie-detail-container'>
        <div className='move-detail-cont2'>
          <div className='movie-detail'>
            <div className='movie-picture'>
              <img className='movie-detail-img' src={("https://image.tmdb.org/t/p/w500" + this.props.movie.poster_path)}></img>
              {movielistButton}
            </div>
            <div className='movie-detail-items'>
              <div className='movie-info'>
              <h2 className='title-detail'>{this.props.movie.title}</h2>
              <h4>Rating: {this.props.movie.vote_average}</h4>

              <h5 className='year-detail'>Year Released: {this.props.movie.release_date}</h5>
              <p>{this.props.movie.overview}</p>
              </div>
            </div>
          </div>

          <ReviewsContainer movieId={this.props.params.id} />

          <Modal isOpen={this.state.movielistModalOpen}
             onRequestClose={() => this.setState({movielistModalOpen: false})}
             className='modal-check'
             style={modalStyle}
             contentLabel='Modal'>
            <form className='movielist_movies-form'>
              <h4>Movielists</h4>
              {movielist_moviesCheckboxes}
              <button onClick={this.updateMovielist_movies}>Submit</button>
            </form>
          </Modal>
        </div>
      </div>
    );
  }
}

export default withRouter(MovieDetail);
