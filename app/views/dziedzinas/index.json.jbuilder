json.array!(@dziedzinas) do |dziedzina|
  json.extract! dziedzina, :id, :name
  json.url dziedzina_url(dziedzina, format: :json)
end
