json.extract! review, :id, :rating, :body
json.set! :userName, "#{review.user.username}"
json.set! :movieId, review.movie_id
