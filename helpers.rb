helpers do
  def parsed_body
    @parsed_body ||= JSON.parse(request.body.read)
  end

  def validate(schema, body)
    JSON::Validator.validate!(schema, body)
  end

  def get_lists
    DB.execute("SELECT * FROM lists")
  end

  def get_albums
    DB.execute("SELECT * FROM albums WHERE list_id = ?", params["list_id"])
  end

  def add_list(title, user_id)
    DB.execute("INSERT INTO lists (title, user_id) VALUES (?, ?)", [title, user_id])
  end

  def new_list
    last_row_id = DB.last_insert_row_id
    new_list = DB.execute("SELECT * FROM lists WHERE id = ?", last_row_id)
  end

  def add_albums(albums, list_id)
    albums.each do |album|
      DB.execute("INSERT INTO albums (album, artist, release_year, list_id) VALUES (?, ?, ?, ?)", [album["album"], album["artist"], album["release_year"], list_id])
    end
  end

  def new_albums(last_id)
    new_last_id = DB.execute("SELECT id FROM albums")[-1]["id"]
    ids = Range.new(last_id + 1, new_last_id)
    ids.map { |id| DB.execute("SELECT * FROM albums WHERE id = ?", id) }
  end
end
