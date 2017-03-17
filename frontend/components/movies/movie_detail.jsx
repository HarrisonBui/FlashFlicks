import React from 'react';
import { withRouter } from 'react-router';

class MovieDetail extends React.Component{
  constructor(props) {
    super(props);
  }

  componentDidMount(){
    this.props.requestMovieDetail(this.props.params.id);
  }

  render(){
    console.log("hello");
    const movie = this.props.movie;
    console.log(movie);
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
              <h4 className='director-detail'>DIRECTOR: {this.props.movie.director}</h4>
              <h5 className='year-detail'>YEAR: {this.props.movie.year}</h5>
              <h5 className='rating-detail'>RATING: {this.props.movie.rating}</h5>
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
