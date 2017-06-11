json.extract! listing_attachment, :id, :listing_id, :photo, :created_at, :updated_at
json.url listing_attachment_url(listing_attachment, format: :json)
