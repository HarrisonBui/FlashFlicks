import { connect } from 'react-redux';
import MovieDetail from './movie_detail';
import { requestMovieDetail } from '../../actions/movie_actions';
import { requestAllMovielists, updateMovielist } from '../../actions/movielist_actions';

const mapStateToProps = (state, ownProps) => ({
  movie: state.movieDetail,
  currentUser: state.session.currentUser,
  movielists: state.movielists
});

const mapDispatchToProps = dispatch => ({
  requestMovieDetail: (movie) => dispatch(requestMovieDetail(movie)),
  requestAllMovielists: () => dispatch(requestAllMovielists()),
  updateMovielist: (movielist) => dispatch(updateMovielist(movielist))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(MovieDetail);
