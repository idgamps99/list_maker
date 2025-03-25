LIST_SCHEMA = {
  "type" => "object",
  "required" => ["title", "user_id"],
  "additionalProperties" => false,
  "properties" => {
    "title" => {
      "type" => "string"
    },
    "user_id" => {
      "type" => "integer"
    }
  }
}

ALBUMS_SCHEMA = {
  "type" => "array",
  "items" => {
    "type" => "object",
    "required" => ["album", "artist", "release_year"],
    "additionalProperties" => false,
    "properties" => {
      "album" => {
        "type" => "string"
      },
      "artist" => {
        "type" => "string"
      },
      "release_year" => {
        "type" => "integer"
      }
    }
  }
}
