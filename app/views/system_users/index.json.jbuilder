json.array!(@system_users) do |system_user|
  json.extract! system_user, :id, :firstname, :lastname, :identification, :dob, :sex, :address, :contact, :email, :description, :type
  json.url system_user_url(system_user, format: :json)
end
