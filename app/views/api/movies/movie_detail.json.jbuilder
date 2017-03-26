json.partial! 'api/movies/movie', movie: @movie
json.extract! @movie, :user_id
if @review
  json.set! :review do
    json.partial! 'api/reviews/review', review: @review
  end
else
  json.set! :review, nil
end
