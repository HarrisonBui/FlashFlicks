import { combineReducers } from 'redux';
import SessionReducer from './session_reducer';
import MovieReducer from './movie_reducer';
import MovieDetailReducer from './movie_detail_reducer';
import MovielistsReducer from './movielist_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  movies: MovieReducer,
  movieDetail: MovieDetailReducer,
  movielists: MovielistsReducer
});

export default RootReducer;
