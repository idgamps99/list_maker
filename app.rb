require "json"
require "json-schema"
require "sinatra"
require "sinatra/cross_origin"
require "sqlite3"
require_relative "schemas"
require_relative "helpers"

DB = SQLite3::Database.new "db/lists"
DB.results_as_hash = true

configure do
  enable :cross_origin
end

before do
  response.headers['Access-Control-Allow-Origin'] = 'http://localhost:8080'
  response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
  response.headers['Access-Control-Allow-Headers'] = 'Content-Type, Accept'
end

options "*" do
  200
end

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
