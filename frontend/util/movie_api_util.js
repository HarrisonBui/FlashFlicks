export const fetchMovies = () => (
  $.ajax({
    method: 'GET',
    url: 'api/movies'
  })
);

export const fetchMovie = (id) => (
  $.ajax({
    method: 'GET',
    url: `api/movies/${id}`
  })
);

export const fetchMovieDetail = (id) => (
  $.ajax({
    method: 'GET',
    url: `api/movies/detail/${id}`
  })
);

// export const fetchUserMovies = () => (
//   $.ajax({
//     method: 'GET',
//     url: 'api/movies/user_movies'
//   })
// );
