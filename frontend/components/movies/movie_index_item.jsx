import React from 'react';
import {Link} from 'react-router';

class MovieIndexItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {

    return(
      <div className='movie-index-item' id={this.props.movie.id} key={this.props.movie.id}>
        <Link to={`movie-detail/${this.props.movie.id}`}className='movie-list'>
          <img className="movie-img" src={this.props.movie.image_url}></img>
          <h4>{this.props.movie.title}</h4>
          <h6>{this.props.movie.rating}</h6>
        </Link>
      </div>
    );
  }
}

export default MovieIndexItem;
