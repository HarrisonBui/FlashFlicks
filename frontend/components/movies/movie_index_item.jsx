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

    return(
      <div className='movie-index-item'  id={this.props.movie.id} key={this.props.movie.id}>
        <div className='cover'></div>
        <Link to={`movie-detail/${this.props.movie.id}`}className='movie-list-item'>
          <img className="movie-img" src={("https://image.tmdb.org/t/p/w500" + this.props.movie.poster_path)}></img>
          <div className="show-title-rating">
            <h4>{this.props.movie.title}</h4>
            <br></br>
            <h4>{this.props.movie.vote_average} <img
              className="icon"
              src="https://img.clipartfest.com/ac53e73ecdfaddaf6d0c85cb175fe1de_big-image-png-big-yellow-star-clipart_2400-2283.png"
              width="16"
              height="13"
              /> </h4>
                {removeMovielist_moviesButton}
            </div>
        </Link>
      </div>
    );
  }
}

export default MovieIndexItem;
