json.array!(@items) do |item|
  json.extract! item, :id, :batch_id, :name, :brand, :price, :color, :age, :blemishes, :original_price, :url, :description
  json.url item_url(item, format: :json)
end
