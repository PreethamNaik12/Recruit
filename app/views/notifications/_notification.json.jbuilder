json.extract! notification, :id, :readtime, :heading, :description, :created_at, :updated_at
json.url notification_url(notification, format: :json)
