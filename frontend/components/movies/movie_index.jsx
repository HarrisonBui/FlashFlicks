import React from 'react';
import { withRouter } from 'react-router';
import MovieIndexItem from './movie_index_item';

class MovieIndex extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  componentDidMount(){
    this.props.requestReviews(this.props.params.id);
  }

  componentWillMount(){
  }

  handleClick(e) {
    if (e.target.id === 'delete-movielist_movies') {
      e.preventDefault();
      const movieId = parseInt(e.target.parentElement.parentElement.parentElement.id);
      const idx = this.props.movielist.movies.indexOf(movieId);
      let newMovies = this.props.movielist.movies;
      newMovies.splice(idx, 1);
      if (newMovies.length === 0) {
          newMovies = [''];
      }

      this.props.updateMovielist({id: this.props.movielist.id, movie_ids: newMovies});
      this.props.router.push('movielists');
    }
  }

  render() {
    let movies;
      if (this.props.movies.length) {
        movies = this.props.movies[1].map((movie, idx) => (
          <MovieIndexItem key={movie.id}
            movie={movie}
            movielist={this.props.movielist}
            updateMovielist={this.props.updateMovielist}/>
        ));
      }

      debugger;

    return(
      <div>
        <div className='movie-header'>
          <h2 className='movielist-header'>{this.props.title}</h2>
        </div>
        <div className='outside-movie'>
          <div className='movie-index'>
            <div className='movie-list'>
              <ul className='movie-list-ul'
                onClick={this.handleClick}>
              {movies}
              </ul>
            </div>
          </div>
        </div>
    </div>
    );
  }
}

export default withRouter(MovieIndex);
