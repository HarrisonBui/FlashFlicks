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
      <div className='movie-index'>
        <h2>{this.props.title}</h2>
        <ul className='movie-list'>
          {movies}
        </ul>
    </div>
    );
  }
}

export default withRouter(MovieIndex);
