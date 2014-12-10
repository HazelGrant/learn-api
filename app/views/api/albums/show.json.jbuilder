json.album do
  json.id     @album.id
  json.tital  @album.title

  json.artist_id  @album.artist ? album.artist.id : nil
end
