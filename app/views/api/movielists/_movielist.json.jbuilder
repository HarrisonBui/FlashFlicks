json.extract! movielist, :id, :title
json.movies do
  json.array! movielist.movies.ids
end
