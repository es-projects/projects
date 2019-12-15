json.extract! student, :id, :number, :name, :ects, :average, :group_id, :project_id, :created_at, :updated_at
json.url student_url(student, format: :json)
