import { connect } from 'react-redux';
import MovielistIndex from './movielist_index';
import { requestAllMovielists,
         createMovielist,
         deleteMovielist } from '../../actions/movielist_actions';
import { requestUserMovies } from '../../actions/movie_actions';

const mapStateToProps = (state, ownProps) => ({
  currentUser: state.session.currentUser,
  movielists: Object.keys(state.movielists).map(id => state.movielists[id]),
  movies: state.movies,
});

const mapDispatchToProps = (dispatch) => ({
  requestAllMovielists: () => dispatch(requestAllMovielists()),
  createMovielist: (movielist) => dispatch(createMovielist(movielist)),
  deleteMovielist: (movielist) => dispatch(deleteMovielist(movielist)),
  requestUserMovies: () => dispatch(requestUserMovies())
});

export default connect(mapStateToProps, mapDispatchToProps)(MovielistIndex);
