require "sinatra"
require "sqlite3"
require "json"

DB = SQLite3::Database.new "lists"
DB.results_as_hash = true

get "/lists" do
  content_type :json
  lists = DB.execute("SELECT * FROM lists")
  lists.to_json
end

get "/lists/:list_id/albums" do
  albums = DB.execute("SELECT * FROM albums WHERE list_id = ?", params["list_id"])
  albums.to_json
end

# post "/lists" do

# end

# post "/lists/:list_id/albums"

# end
