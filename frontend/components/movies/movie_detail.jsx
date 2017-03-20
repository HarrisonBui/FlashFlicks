import React from 'react';
import { withRouter } from 'react-router';
import Rating from 'react-rating';

class MovieDetail extends React.Component{
  constructor(props) {
    super(props);
  }

  componentDidMount(){
    this.props.requestMovieDetail(this.props.params.id);
  }

  render(){

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

    return(
      <div className='movie-detail-container'>
        <div className='move-detail-cont2'>
          <div className='movie-detail'>
            <div className='movie-picture'>
              <img className='movie-detail-img' src={this.props.movie.image_url}></img>
            </div>
            <div className='movie-detail-items'>
              <div className='movie-info'>
              <h2 className='title-detail'>{this.props.movie.title}</h2>
              <Rating
                full={ fullstar }
                empty={ emptystar }
                initialRate={ this.props.movie.rating }
                readonly={ true }
                />
              <h4 className='director-detail'>Directed By: {this.props.movie.director}</h4>
              <h5 className='year-detail'>Year Released: {this.props.movie.year}</h5>
              <p>{this.props.movie.description}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default withRouter(MovieDetail);
