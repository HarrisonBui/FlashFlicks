json.partial! 'api/movies/movie', movie: @movie

if @review
  json.set! :review do
    json.partial! 'api/reviews/review', review: @review
  end
else
  json.set! :review, nil
end
