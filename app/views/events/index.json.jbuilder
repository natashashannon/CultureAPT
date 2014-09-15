json.array!(@events) do |event|
  json.extract! event, :id, :org_id, :venue_id, :name, :start_date, :end_date, :start_time, :end_time, :description, :url, :spec_instruction, :ticket_rsvp_instruction, :price_low, :price_high, :restriction, :category, :subcategory
  json.url event_url(event, format: :json)
end
