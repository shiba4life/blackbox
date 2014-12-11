json.array!(@batches) do |batch|
  json.extract! batch, :id, :user_id, :expiration_date
  json.url batch_url(batch, format: :json)
end
