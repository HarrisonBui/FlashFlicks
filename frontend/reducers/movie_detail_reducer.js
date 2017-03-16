import { RECEIVE_MOVIE_DETAIL } from '../actions/movie_actions';
import { merge } from 'lodash';

const MovieDetailReducer = (state = {}, action) => {
  let newMovie;
  switch (action.type) {
    case RECEIVE_MOVIE_DETAIL:
      return action.movie;
    default:
      return state;
  }
};
 export default MovieDetailReducer;
