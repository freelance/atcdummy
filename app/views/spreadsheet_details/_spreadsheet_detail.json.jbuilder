json.extract! spreadsheet_detail, :id, :spreadsheet_id, :totalv, :netov, :gastov, :choferv, :created_at, :updated_at
json.url spreadsheet_detail_url(spreadsheet_detail, format: :json)
