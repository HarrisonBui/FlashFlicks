import { connect } from 'react-redux';
import  MovieDetail  from './movie_detail';
import { requestMovieDetail } from '../../actions/movie_actions';
import { requestAllMovielists, updateMovielist } from '../../actions/movielist_actions';
import { requestReviews } from '../../actions/review_actions';

const mapStateToProps = (state, ownProps) => ({
  movie: state.movieDetail,
  url_id: ownProps.params.id,
  currentUser: state.session.currentUser,
  movielists: state.movielists,
  reviews: state.reviews
});

const mapDispatchToProps = dispatch => ({
  requestMovieDetail: (movie) => dispatch(requestMovieDetail(movie)),
  requestAllMovielists: () => dispatch(requestAllMovielists()),
  updateMovielist: (movielist) => dispatch(updateMovielist(movielist)),
  requestReviews: () => dispatch(requestReviews())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(MovieDetail);
