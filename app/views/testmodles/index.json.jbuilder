json.array!(@testmodles) do |testmodle|
  json.extract! testmodle, :id, :name, :title
  json.url testmodle_url(testmodle, format: :json)
end
