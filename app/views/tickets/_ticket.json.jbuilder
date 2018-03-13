json.extract! ticket, :id, :license_id, :code, :totalvt, :netov, :gastov, :choferv, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
