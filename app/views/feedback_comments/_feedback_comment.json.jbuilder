json.extract! feedback_comment, :id, :feedback_type, :feedback_description, :regarding_field, :Employee_id, :created_at, :updated_at
json.url feedback_comment_url(feedback_comment, format: :json)
