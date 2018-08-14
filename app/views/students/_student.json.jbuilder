json.extract! student, :id, :name, :description, :age, :created_at, :updated_at
json.url student_url(student, format: :json)
