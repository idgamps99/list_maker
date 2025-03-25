require "json"
require "json-schema"
require "sinatra"
require "sqlite3"
require_relative "schemas"
require_relative "helpers"

DB = SQLite3::Database.new "db/lists"
DB.results_as_hash = true

get "/lists" do
  content_type :json
  get_lists.to_json
end

get "/lists/:list_id/albums" do
  content_type :json
  get_albums.to_json
end

post "/lists" do
  content_type :json

  validate(LIST_SCHEMA, parsed_body)
  add_list(parsed_body["title"], parsed_body["user_id"])

  status 201
  new_list.to_json
end


post "/lists/:list_id/albums" do
  content_type :json

  validate(ALBUMS_SCHEMA, parsed_body)
  last_id = DB.execute("SELECT id FROM albums")[-1]["id"]
  add_albums(parsed_body, params["list_id"])

  status 201
  new_albums(last_id).to_json
end
