import { RECEIVE_ALL_MOVIELISTS,
         RECEIVE_MOVIELIST,
         REMOVE_MOVIELIST } from  '../actions/movielist_actions';
import { merge } from 'lodash';


const MovielistReducer = (state = {}, action ) => {
  let newState;
  switch (action.type) {
    case RECEIVE_ALL_MOVIELISTS:
      return action.movielists;
    case RECEIVE_MOVIELIST:
      newState = merge({}, state, action.movielist);
      return newState;
    case REMOVE_MOVIELIST:
      newState = merge({}, state);
      delete newState[action.movielist.id];
      return newState;
    default:
      return state;
  }
};

export default MovielistReducer;
