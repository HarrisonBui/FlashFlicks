import { connect } from 'react-redux';
import MovielistIndex from './movie_index';
import { requestAllMovielists,
         createMovielist,
         deleteMovielist } from '../../actions/movielist_actions';

const mapStateToProps = (state) => ({
  movielists: state.movielists,
  currentUser: state.session.currentUser,
});

const mapDispatchToProps = dispatch => ({
  requestAllMovieLists: () => dispatch(requestAllMovielists()),
  createMovielist: (movielist) => dispatch(createMovielist(movielist)),
  deleteMovielist: (movielist) => dispatch(deleteMovielist(movielist))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(MovielistIndex);
