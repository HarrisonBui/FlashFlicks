import * as APIutil from '../util/movielist_api_util';

export const RECEIVE_ALL_MOVIELISTS = 'RECEIVE_ALL_MOVIELISTS';
export const RECEIVE_MOVIELIST = 'RECEIVE_MOVIELIST';
export const REMOVE_MOVIELIST = 'REMOVE_MOVIELIST';


export const requestAllMovielists = () => dispatch => (
  APIutil.requestAllMovielists()
    .then(movielists => dispatch(receiveAllMovielists(movielists)))
);

export const createMovielist = (movielist) => dispatch => (
  APIutil.createMovielist(movielist)
    .then(movielists => dispatch(receiveAllMovielists(movielists)))
);

export const deleteMovielist = (id) => dispatch => (
  APIutil.deleteMovielist(id)
    .then(movielist => dispatch(removeMovielist(movielist)))
);

export const receiveAllMovielists = (movielists) => ({
  type: RECEIVE_ALL_MOVIELISTS,
  movielists
});

export const receiveMovielist = (movielist) => ({
  type: RECEIVE_MOVIELIST,
  movielist
});

export const removeMovielist = (movielist) => ({
  type: REMOVE_MOVIELIST,
  movielist
});
