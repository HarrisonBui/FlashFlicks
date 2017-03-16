
@movies.each do |movie|
  json.set! movie.id do
    json.extract! movie, :title, :rating, :image_url
  end
end
