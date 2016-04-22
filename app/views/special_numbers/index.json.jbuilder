json.array!(@special_numbers) do |special_number|
  json.extract! special_number, :id, :special
  json.url special_number_url(special_number, format: :json)
end
