import { connect } from 'react-redux';
import Reviews from './reviews';
import { createReview,
         updateReview,
         deleteReview } from '../../actions/review_actions';
import { requestReviews } from '../../actions/review_actions';
import { requestMovieDetail } from '../../actions/movie_actions';

const mapStateToProps = (state) => ({
  movie: state.movieDetail,
  currentUser: state.session.currentUser,
  reviews: state.reviews,
  usersReview:  state.movieDetail.review,

});

const mapDispatchToProps = (dispatch) => ({
  requestMovieDetail: (movie) => dispatch(requestMovieDetail(movie)),
  requestReviews: (movieId) => dispatch(requestReviews(movieId)),
  createReview: (review) => dispatch(createReview(review)),
  updateReview: (review) => dispatch(updateReview(review)),
  deleteReview: (review) => dispatch(deleteReview(review))
});

export default connect(mapStateToProps, mapDispatchToProps)(Reviews);
