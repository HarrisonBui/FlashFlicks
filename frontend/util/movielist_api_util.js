export const fetchAllMovielists = () => (
  $.ajax({
    method: 'GET',
    url: 'api/movielists'
  })
);

export const createMovielist = (movielist) => (
  $.ajax({
    method: 'POST',
    url: 'api/movielists',
    data: { movielist }
  })
);

export const deleteMovielist = (id) => (
  $.ajax({
    method: 'DELETE',
    url: `api/movielists/${id}`
  })
);
