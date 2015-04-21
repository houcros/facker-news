json.array!(@comments) do |comment|
  json.extract! comment, :id, :author, :content, :deleted
  json.url comment_url(comment, format: :json)
end
