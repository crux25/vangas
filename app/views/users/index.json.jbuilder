json.array!(@users) do |user|
  json.extract! user, :id, :name, :department, :class, :traker_name, :address, :phone, :birthday, :email, :team, :status, :activated, :about
  json.url user_url(user, format: :json)
end
