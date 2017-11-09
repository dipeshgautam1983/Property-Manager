json.array!(@apartments) do |apartment|
  json.extract! apartment, :id, :apartmentnumber, :apartmenttype, :status
  json.url apartment_url(apartment, format: :json)
end
