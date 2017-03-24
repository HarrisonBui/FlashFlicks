json.extract! review, :id, :rating, :body
json.set! :userName
json.set! :movieId, review.movie_id
