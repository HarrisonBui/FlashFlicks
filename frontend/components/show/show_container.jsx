import { connect } from 'react-redux';
import { requestMovies } from '../../actions/movie_actions';
import { requestAllMovielists } from '../../actions/movielist_actions';
import Show from './show';

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser,
  movies: Object.keys(state.movies).map(id => state.movies[id])
});

const mapDispatchToProps = (dispatch) => ({
  requestMovies: () => dispatch(requestMovies()),
  requestAllMovielists: () => dispatch(requestAllMovielists())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Show);
