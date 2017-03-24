import * as APIutil from '../util/review_api_util';

export const RECEIVE_REVIEWS = 'RECEIVE_REVIEWS';
export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';
export const REMOVE_REVIEW = 'REMOVE_REVIEW';

export const receiveReviews = (reviews) => ({
  type: RECEIVE_REVIEWS,
  reviews
});

export const receiveReview = (review) => ({
  type: RECEIVE_REVIEW,
  review
});

export const removeReview = (review) => ({
  type: REMOVE_REVIEW,
  review
});

export const requestReviews = (movieId) => dispatch => (
  APIutil.fetchReviews(movieId).then(
    rev => dispatch(receiveReviews(rev)))
);

export const createReview = (review) => dispatch => (
  APIutil.createReview(review)
  .then( rev =>  dispatch(receiveReview(rev)))
);

export const updateReview = (review) => dispatch => (
  APIutil.updateReview(review)
  .then( rev =>  dispatch(receiveReview(rev)))
);

export const deleteReview = (review) => dispatch => (
  APIutil.deleteReview(review)
    .then(rev => dispatch(removeReview(rev)))
);
