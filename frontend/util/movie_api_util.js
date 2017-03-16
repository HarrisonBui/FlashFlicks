export const fetchMovies = () => (
  $.ajax({
    method: 'GET',
    url: 'api/movies'
  })
);

export const fetchMovieDetail = (id) => {
  return $.ajax({
    method: 'GET',
    url: `api/movies/detail/${id}`
  });
};
