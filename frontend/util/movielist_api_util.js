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

export const updateMovielist = (movielist) => {

  return (
    $.ajax({
      method: 'PATCH',
      url: `api/movielists/${movielist.id}`,
      data: { movielist }
    })
  );
};

export const deleteMovielist = (movielist) => (
  $.ajax({
    method: 'DELETE',
    url: `api/movielists/${movielist.id}`
  })
);
