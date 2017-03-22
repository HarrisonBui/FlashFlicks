import * as APIutil from '../util/movie_api_util';

export const RECEIVE_MOVIES = 'RECEIVE_MOVIES';
export const RECEIVE_MOVIE_DETAIL = 'RECEIVE_MOVIE_DETAIL';
export const RECEIVE_MOVIE = 'RECEIVE_MOVIE';

export const receiveMovies = ( movies ) => ({
  type: RECEIVE_MOVIES,
  movies
});

export const receiveMovie = ( movie ) => ({
  type: RECEIVE_MOVIE,
  movie
});

export const receiveMovieDetail = ( movie ) => ({
  type: RECEIVE_MOVIE_DETAIL,
  movie
});

export const requestMovies = () => dispatch => (
  APIutil.fetchMovies().then(movie => dispatch(receiveMovies(movie)))
);

export const requestMovie = (movie) => dispatch => (
  APIutil.fetchMovie(movie).then(mov => dispatch(receiveMovie(mov)))
);

export const requestMovieDetail = ( movie ) => dispatch => (
  APIutil.fetchMovieDetail(movie).then(mov => dispatch(receiveMovieDetail(mov)))
);

export const requestUserMovies = () => dispatch => (
  APIutil.fetchUserMovies().then(movie => dispatch(receiveMovies(movie)))
);
