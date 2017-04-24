import React from 'react';
import {Link} from 'react-router';
import Rating from 'react-rating';

class MovieIndexItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {

    let removeMovielist_moviesButton;
    if ( this.props.movielist ) {
      removeMovielist_moviesButton = (
        <button className='remove-movie' id='delete-movielist_movies'>
          Remove
        </button>
            );
    } else {
      removeMovielist_moviesButton = '';
    }

    const fullstar = <img
      className="icon"
      src="http://res.cloudinary.com/dufjsfgjv/image/upload/v1490030369/star-icon_bnkv7r.png"
      width="14"
      height="14"
      />;

    const emptystar = <img
      className="icon"
      src="http://res.cloudinary.com/dufjsfgjv/image/upload/v1490030471/outline-star-xxl_jbipvt.png"
      width="14"
      height="14"
      />;

    console.log(this.props.movie);

    return(
      <div className='movie-index-item'  id={this.props.movie.id} key={this.props.movie.id}>
        <div className='cover'></div>
        <Link to={`movie-detail/${this.props.movie.id}`}className='movie-list-item'>
          <img className="movie-img" src={("https://image.tmdb.org/t/p/w500" + this.props.movie.poster_path)}></img>
          <div className="show-title-rating">
            <h4>{this.props.movie.title}</h4>
              <Rating
                  full={ fullstar }
                  empty={ emptystar }
                  initialRate={ this.props.movie.rating }
                  readonly={ true }
                  />
                {removeMovielist_moviesButton}
            </div>
        </Link>
      </div>
    );
  }
}

export default MovieIndexItem;
