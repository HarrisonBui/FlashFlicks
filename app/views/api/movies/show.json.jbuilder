json.set! @movie.id do
  json.extract! :id, :title, :director, :year, :rating, :description,
                        :image_url, :youtube_url
end
