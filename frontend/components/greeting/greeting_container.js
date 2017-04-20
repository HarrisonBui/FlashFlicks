import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import { requestAllMovielists } from '../../actions/movielist_actions';
import Greeting from './greeting';
import { requestMovies } from '../../actions/movie_actions';

const mapStateToProps = ({session}) => ({
  currentUser: session.currentUser,
  movies: session.movies
});

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  requestAllMovielists: () => dispatch(requestAllMovielists()),
  requestMovies: () => dispatch(requestMovies())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Greeting);
