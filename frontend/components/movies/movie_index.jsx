import React from 'react';
import { withRouter } from 'react-router';
import MovieIndexItem from './movie_index_item';

class MovieIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const movies = this.props.movies.map((movie, idx) => (
      <MovieIndexItem key={movie.id}
                     movie={movie}/>
    ));
    return(
      <div>
        <div>
          <h2>{this.props.title}</h2>
        </div>
        <div className='outside-movie'>
          <div className='movie-index'>
            <div className='movie-list'>
              {movies}
            </div>
          </div>
        </div>
    </div>
    );
  }
}

export default withRouter(MovieIndex);
