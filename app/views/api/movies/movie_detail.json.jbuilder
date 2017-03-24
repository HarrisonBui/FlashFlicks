json.extract! @movie, :id, :title, :director, :year, :rating, :description,
                      :image_url, :youtube_url
json.extract! @movie, :user_id
  if @review
    json.set! :review do
      json.partial! 'api/reviews/review', review: @review
    end
  else
    json.set! :review, nil
  end
