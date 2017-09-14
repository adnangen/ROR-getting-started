json.extract! subject, :id, :userid, :title, :author, :language, :comments, :created_at, :updated_at
json.url subject_url(subject, format: :json)
