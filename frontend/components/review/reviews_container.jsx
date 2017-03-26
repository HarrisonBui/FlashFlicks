import { connect } from 'react-redux';
import Reviews from './reviews';
import { createReview,
         updateReview,
         deleteReview } from '../../actions/review_actions';
import { requestReviews } from '../../actions/review_actions';

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser,
  reviews: state.reviews,
  usersReview:  state.movieDetail.review,
  movieId: state.movieDetail.id
});

const mapDispatchToProps = (dispatch) => ({
  requestReviews: (movieId) => dispatch(requestReviews(movieId)),
  createReview: (review) => dispatch(createReview(review)),
  updateReview: (review) => dispatch(updateReview(review)),
  deleteReview: (review) => dispatch(deleteReview(review))
});

export default connect(mapStateToProps, mapDispatchToProps)(Reviews);
