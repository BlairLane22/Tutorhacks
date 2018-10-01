json.extract! tutor, :id, :name, :description, :price, :created_at, :updated_at
json.url tutor_url(tutor, format: :json)
