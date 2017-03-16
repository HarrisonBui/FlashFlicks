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
        <div className='movie-detail'>
          <div className='movie-picture-left'>

          </div>

          <div className='movie-detail-text'>
            <h2>{this.props.movie.title}</h2>
            <h4>{this.props.movie.director}</h4>
            <h5>{this.props.movie.year}</h5>
            <h5>{this.props.movie.rating}</h5>
            <p>{this.props.movie.description}</p>
          </div>
        </div>
      </div>
    );
  }
}

export default withRouter(MovieDetail);
