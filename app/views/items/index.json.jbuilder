json.array!(@items) do |item|
  json.extract! item, :id, :deleted, :post_type, :by, :content, :dead, :parent, :kids, :url, :score, :title
  json.url item_url(item, format: :json)
end
