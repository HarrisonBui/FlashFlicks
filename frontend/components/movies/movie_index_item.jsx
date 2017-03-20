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
      src="http://icons.iconarchive.com/icons/psdblast/flat-christmas/512/star-icon.png"
      width="12"
      height="12"
      />;

    const emptystar = <img
      className="icon"
      src="http://www.iconsdb.com/icons/preview/icon-sets/web-2-orange-2/outline-star-xxl.png"
      width="12"
      height="12"
      />;

    return(
      <div className='movie-index-item'  id={this.props.movie.id} key={this.props.movie.id}>
        <Link to={`movie-detail/${this.props.movie.id}`}className='movie-list-item'>
          <img className="movie-img" src={this.props.movie.image_url}></img>
          <h4>{this.props.movie.title}</h4>
            <Rating
                full={ fullstar }
                empty={ emptystar }
                initialRate={ this.props.movie.rating }
                readonly={ true }
                />
        </Link>
      </div>
    );
  }
}

export default MovieIndexItem;
