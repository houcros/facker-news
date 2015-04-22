json.array!(@comments) do |comment|
  json.extract! comment, :id, :content, :deleted, :user_id, :comment_id, :submit_id
  json.url comment_url(comment, format: :json)
end
