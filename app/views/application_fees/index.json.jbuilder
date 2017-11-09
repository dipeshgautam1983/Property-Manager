json.array!(@application_fees) do |application_fee|
  json.extract! application_fee, :id
  json.url application_fee_url(application_fee, format: :json)
end
