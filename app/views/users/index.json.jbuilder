json.array!(@users) do |user|
  json.extract! user, :id, :email, :password, :login_type
  json.url user_url(user, format: :json)
end
