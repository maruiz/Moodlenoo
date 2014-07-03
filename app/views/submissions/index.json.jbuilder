json.array!(@submissions) do |submission|
  json.extract! submission, :id, :score, :grade, :assignment_id
  json.url submission_url(submission, format: :json)
end
