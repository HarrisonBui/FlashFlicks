import React from 'react';
import {Link} from 'react-router';
import Rating from 'react-rating';

class MovieIndexItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
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

    return(
      <div className='movie-index-item'  id={this.props.movie.id} key={this.props.movie.id}>
        <div className='cover'></div>
        <Link to={`movie-detail/${this.props.movie.id}`}className='movie-list-item'>
          <img className="movie-img" src={this.props.movie.image_url}></img>
          <div className="show-title-rating">
            <h4>{this.props.movie.title}</h4>
              <Rating
                  full={ fullstar }
                  empty={ emptystar }
                  initialRate={ this.props.movie.rating }
                  readonly={ true }
                  />
            </div>
        </Link>
      </div>
    );
  }
}

export default MovieIndexItem;
