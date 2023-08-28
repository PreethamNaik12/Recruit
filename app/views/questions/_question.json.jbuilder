json.extract! question, :id, :title, :required, :typequestion, :information, :created_at, :updated_at
json.url question_url(question, format: :json)
