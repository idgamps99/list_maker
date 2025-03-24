helpers do
  def parsed_body
    @parsed_body ||= JSON.parse(request.body.read)
  end

  def validate(schema, body)
    JSON::Validator.validate!(schema, body)
  end

  def insert_albums(albums, list_id)
    albums.each do |album|
      DB.execute("INSERT INTO albums (album, artist, release_year, list_id)", [album["title"], album["artist"], album["release_year"], list_id])
    end
  end
end
