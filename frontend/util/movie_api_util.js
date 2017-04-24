export const fetchMovies = () => (
  $.ajax(settings)
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



var settings = {
  "async": true,
  "crossDomain": true,
  "url": "https://api.themoviedb.org/3/movie/popular?page=1&language=en-US&api_key=aa5a0b19080312882d212afcfd260652",
  "method": "GET",
  "headers": {},
  "data": "{}"
}

// $.ajax(settings).done(function (response) {
//   console.log(response);
// });
