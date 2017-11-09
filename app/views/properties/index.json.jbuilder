json.array!(@properties) do |property|
  json.extract! property, :id, :propertyname, :propertyaddress, :propertyowner
  json.url property_url(property, format: :json)
end
