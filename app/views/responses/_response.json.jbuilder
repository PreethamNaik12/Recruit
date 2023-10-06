json.extract! response, :id, :credits_earned, :created_at, :updated_at
json.url response_url(response, format: :json)
