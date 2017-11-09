json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :first_name, :last_name, :email, :comment
  json.url appointment_url(appointment, format: :json)
end
