import { connect } from 'react-redux';
import Reviews from './reviews';
import { createReview,
         updateReview,
         deleteReview } from '../../actions/review_actions';

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser,
  movieId: state.movieDetail.id,
  reviews: state.reviews,
  usersReview:  state.movieDetail.review
});

const mapDispatchToProps = (dispatch) => ({
  createReview: (review) => dispatch(createReview(review)),
  updateReview: (review) => dispatch(updateReview(review)),
  deleteReview: (review) => dispatch(deleteReview(review))
});

export default connect(mapStateToProps, mapDispatchToProps)(Reviews);
