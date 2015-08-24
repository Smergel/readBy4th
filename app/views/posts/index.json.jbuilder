json.array!(@posts) do |post|
  json.extract! post, :id, :user_id, :program_id, :post_type, :post_description, :post_attachment, :absence, :absence_reason
  json.url post_url(post, format: :json)
end
