json.array!(@tasks) do |task|
  json.extract! task, :id, :content, :user_id, :content_html
  json.url task_url(task, format: :json)
end
