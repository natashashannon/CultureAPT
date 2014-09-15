json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :street, :city, :state, :zip, :url, :phone, :latitude, :longitude
  json.url venue_url(venue, format: :json)
end
