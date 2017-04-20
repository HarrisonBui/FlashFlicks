import * as APIutil from '../util/movielist_api_util';

export const RECEIVE_ALL_MOVIELISTS = 'RECEIVE_ALL_MOVIELISTS';
export const RECEIVE_MOVIELIST = 'RECEIVE_MOVIELIST';
export const REMOVE_MOVIELIST = 'REMOVE_MOVIELIST';

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

export const requestAllMovielists = () => dispatch => (
  APIutil.fetchAllMovielists()
    .then(movielists => dispatch(receiveAllMovielists(movielists)))
);

export const requestMovielist = (id) => dispatch => (
  APIutil.fetchMovielist(id)
    .then(movielist => dispatch(receiveMovielist(movielist)))
);

export const createMovielist = (movielist) => dispatch => (
  APIutil.createMovielist(movielist)
    .then(mov => dispatch(receiveMovielist(mov)))
);

export const updateMovielist = ( movielist) => dispatch => {
  return (
    APIutil.updateMovielist(movielist)
    .then(mov => dispatch(receiveMovielist(mov)))
  );
};

export const deleteMovielist = (movielist) => dispatch => (
  APIutil.deleteMovielist(movielist)
    .then(mov => dispatch(removeMovielist(mov)))
);
