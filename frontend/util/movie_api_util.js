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


// export const fetchMovies = () => (
//   $.ajax(index)
// );
//
// export const fetchMovie = (id) => (
//   $.ajax({
//     "async": true,
//     "crossDomain": true,
//     "url": `https://api.themoviedb.org/3/movie/${id}?language=en-US&api_key=aa5a0b19080312882d212afcfd260652`,
//     "method": "GET",
//     "headers": {},
//     "data": "{}"
//   })
// );
//
// export const fetchMovieDetail = (id) => (
//   $.ajax({
//     "async": true,
//     "crossDomain": true,
//     "url": `https://api.themoviedb.org/3/movie/${id}?language=en-US&api_key=aa5a0b19080312882d212afcfd260652`,
//     "method": "GET",
//     "headers": {},
//     "data": "{}"
//   })
// );
//
//
//
// var index = {
//   "async": true,
//   "crossDomain": true,
//   "url": "https://api.themoviedb.org/3/movie/popular?page=1&language=en-US&api_key=aa5a0b19080312882d212afcfd260652",
//   "method": "GET",
//   "headers": {},
//   "data": "{}"
// }
