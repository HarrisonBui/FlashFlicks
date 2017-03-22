export const fetchMovies = () => (
  $.ajax({
    method: 'GET',
    url: 'api/movies'
  })
);

export const fetchMovie = (movie) => (
  $.ajax({
    method: 'GET',
    url: `api/movies/${movie.id}`
  })
);

export const fetchMovieDetail = (id) => {
  return $.ajax({
    method: 'GET',
    url: `api/movies/detail/${id}`
  });
};

export const fetchUserMovies = () => (
  $.ajax({
    method: 'GET',
    url: 'api/movies/user_movies'
  })
);
