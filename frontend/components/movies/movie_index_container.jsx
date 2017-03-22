import { connect } from 'react-redux';
import MovieIndex from './movie_index';
import requestMovies from '../../actions/movie_actions';
import updateMovielist from '../../actions/movielist_actions';

const mapStateToProps = (state, ownProps) => ({
  movies: ownProps.movies,
  title: ownProps.title,
});

const mapDispatchToProps = (dispatch) => ({
  requestMovies: () => dispatch(requestMovies()),
  updateMovielist: (movielist) => dispatch(updateMovielist(movielist))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(MovieIndex);
