helpers do
  def parsed_body
    @parsed_body ||= JSON.parse(request.body.read)
  end

  def validate(schema, body)
    JSON::Validator.validate!(schema, body)
  end
end
