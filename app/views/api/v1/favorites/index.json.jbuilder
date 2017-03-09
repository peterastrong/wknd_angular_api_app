json.array! @favorites.each do | favorite |
  json.id favorite.id
  json.school_name favorite.school_name
end 