export const fetchMovies = () => (
  $.ajax({
    method: 'GET',
    url: 'api/movies'
  })
);

export const fetchMovieDetail = (movie) => (
  $.ajax({
    method: 'GET',
    url: `api/movies/detail/${movie.id}`
  })
);
