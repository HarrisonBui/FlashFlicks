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

export const fetchUsersMovies = () => (
  $.ajax({
    method: 'GET',
    url: 'api/movies/users_movies'
  })
);
