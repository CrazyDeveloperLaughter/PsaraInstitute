json.array!(@mail_documents) do |mail_document|
  json.extract! mail_document, :id, :text, :video, :picture
  json.url mail_document_url(mail_document, format: :json)
end
