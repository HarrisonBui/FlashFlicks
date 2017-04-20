import { RECEIVE_MOVIE_DETAIL } from '../actions/movie_actions';
import { RECEIVE_REVIEW, REMOVE_REVIEW } from '../actions/review_actions';
import { merge } from 'lodash';

const MovieDetailReducer = (state = {}, action) => {
  let newMovie;
  switch (action.type) {
    case RECEIVE_MOVIE_DETAIL:
      return action.movie;
    case RECEIVE_REVIEW:
      newMovie = merge({}, state);
      newMovie = merge(newMovie, {review: Object.values(action.review)[0]});
      return newMovie;
    case REMOVE_REVIEW:
      newMovie = merge({}, state);
      newMovie = merge(newMovie, {review:null});
      return newMovie;
    default:
      return state;
  }
};
 export default MovieDetailReducer;
