@movielists.each do |movielist|
  json.set! movielist.id do
    json.partial! 'api/movielists/movielist', movielist: movielist
  end
end
