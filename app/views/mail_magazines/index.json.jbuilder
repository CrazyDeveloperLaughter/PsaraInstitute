json.array!(@mail_magazines) do |mail_magazine|
  json.extract! mail_magazine, :id, :title
  json.url mail_magazine_url(mail_magazine, format: :json)
end
