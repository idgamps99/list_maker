require "json"
require "json-schema"
require "sinatra"
require "sqlite3"
require_relative "db/schemas"
require_relative "helpers"

DB = SQLite3::Database.new "lists"
DB.results_as_hash = true

get "/lists" do
  content_type :json
  lists = DB.execute("SELECT * FROM lists")
  lists.to_json
end

get "/lists/:list_id/albums" do
  content_type :json
  albums = DB.execute("SELECT * FROM albums WHERE list_id = ?", params["list_id"])
  albums.to_json
end

post "/lists" do
  content_type :json

  validate(LIST_SCHEMA, parsed_body)
  DB.execute("INSERT INTO lists (title, user_id) VALUES (?, ?)", [parsed_body["title"], parsed_body["user_id"]])

  last_row_id = DB.last_insert_row_id
  new_list = DB.execute("SELECT * FROM lists WHERE id = ?", last_row_id)
  status 201
  new_list.to_json
end


# post "/lists/:list_id/albums"

# end
