export const fetchReviews = (movieId) => (
  $.ajax({
    method: 'GET',
    url: 'api/reviews',
    data: { movie_id: movieId }
  })
);

export const createReview = (review) => {
  debugger;
  return (
  $.ajax({
    method: 'POST',
    url: 'api/reviews',
    data: { review }
  })
);
};

export const updateReview = (review) => (
  $.ajax({
    method: 'PATCH',
    url: `api/reviews/${review.id}`,
    data: { review }
  })
);

export const deleteReview = (review) => (
  $.ajax({
    method: 'DELETE',
    url: `api/reviews/${review.id}`
  })
);
