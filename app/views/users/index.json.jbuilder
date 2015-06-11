json.array!(@users) do |use|
  json.extract! use, :id, :username, :password
  json.url use_url(use, format: :json)
end
