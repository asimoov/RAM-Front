json.array!(@hospitals) do |hospital|
  json.extract! hospital, :id, :name, :acronym, :country
  json.url hospital_url(hospital, format: :json)
end
