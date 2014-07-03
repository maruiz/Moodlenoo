json.array!(@documents) do |document|
  json.extract! document, :id, :title, :attachable_id, :attachable_type
  json.url document_url(document, format: :json)
end
