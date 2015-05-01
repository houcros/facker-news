json.array!(@submits) do |submit|
  json.extract! submit, :id, :title, :score, :url, :submit_type, :user_id
  json.url submit_url(submit, format: :json)
end
