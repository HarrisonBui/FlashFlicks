@movielists.each do |movielist|
  json.set! movielist.id do
    json.extract! movielist,
      :id,
      :title,
      :user_id
  end
end
