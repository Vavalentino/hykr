json.array!(@wanderungens) do |wanderungen|
  json.extract! wanderungen, :id, :description
  json.url wanderungen_url(wanderungen, format: :json)
end
