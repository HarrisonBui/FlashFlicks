import { RECEIVE_MOVIES, RECEIVE_MOVIE }
  from '../actions/movie_actions';
import { merge } from 'lodash';

const MovieReducer = (state = {}, action) => {
  let newState;
  switch(action.type) {
    case RECEIVE_MOVIES:
      return action.movies;
    case RECEIVE_MOVIE:
      newState = merge({}, state, action.movie);
      return newState;
    default:
      return state;
  }
};

export default MovieReducer;
