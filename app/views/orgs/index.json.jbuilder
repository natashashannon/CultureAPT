json.array!(@orgs) do |org|
  json.extract! org, :id, :name, :url
  json.url org_url(org, format: :json)
end
