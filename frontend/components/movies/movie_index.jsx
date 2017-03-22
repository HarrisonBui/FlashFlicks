import React from 'react';
import { withRouter } from 'react-router';
import MovieIndexItem from './movie_index_item';

class MovieIndex extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(e) {
  if (e.target.id === 'delete-movielist_movies') {
    e.preventDefault();
    const movieId = parseInt(e.target.parentElement.parentElement.id);
    const idx = this.props.movielist.movies.indexOf(movieId);
    let newMovies = this.props.movielist.movies;
    newMovies.splice(idx, 1);
    if ( newMovies.length === 0) {
      newMovies = [''];
    }
    this.props.updateMovielist({
      id: this.props.movielist.id,
      movie_ids: newMovies
    });
    e.stopPropagation();
  } else if (e.target.className !== 'movie-list') {
    let el = e.target;
    while (el.className !== 'movie-index-item') {
      el = el.parentElement;
    }
    this.props.router.push(`/movie-detail/${el.id}`);
  }
  e.stopPropagation();
}

  render() {
    const movies = this.props.movies.map((movie, idx) => (
      <MovieIndexItem key={movie.id}
                     movie={movie}
                     movielist={this.props.movielist}
                     updateMovielist={this.props.updateMovielist}/>
    ));
    return(
      <div>
        <div>
          <h2>{this.props.title}</h2>
        </div>
        <div className='outside-movie'>
          <div className='movie-index'>
            <div className='movie-list'>
              <ul className='movie-list'
                onClick={this.handleClick}>
              {movies}
              </ul>
            </div>
          </div>
        </div>
    </div>
    );
  }
}

export default withRouter(MovieIndex);
