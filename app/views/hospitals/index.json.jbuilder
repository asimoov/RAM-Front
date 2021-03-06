json.array!(@hospitals) do |hospital|
  json.extract! hospital, :id, :name, :acronym, :city
  json.url hospital_url(hospital, format: :json)
end
