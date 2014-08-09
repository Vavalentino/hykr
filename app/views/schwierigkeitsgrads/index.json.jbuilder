json.array!(@schwierigkeitsgrads) do |schwierigkeitsgrad|
  json.extract! schwierigkeitsgrad, :id, :description
  json.url schwierigkeitsgrad_url(schwierigkeitsgrad, format: :json)
end
