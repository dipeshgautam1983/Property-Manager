json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :description, :status, :agentcomment
  json.url ticket_url(ticket, format: :json)
end
