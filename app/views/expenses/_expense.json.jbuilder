json.extract! expense, :id, :spreadsheet_id, :gastov, :edescription, :created_at, :updated_at
json.url expense_url(expense, format: :json)
