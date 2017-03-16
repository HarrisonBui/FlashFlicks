
@movies.each do |movie|
  json.set! movie.id do
    json.extract! movie, :id, :title, :rating, :image_url
  end
end
