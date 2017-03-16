import { connect } from 'react-redux';
import MovieIndex from './movie_index';
import requestMovies from '../../actions/movie_actions';

const mapStateToProps = (state, ownProps) => ({
  movies: ownProps.movies,
  title: ownProps.title,
  rating: ownProps.rating
});

const mapDispatchToProps = (dispatch) => ({
  requestMovies: () => dispatch(requestMovies())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(MovieIndex);
