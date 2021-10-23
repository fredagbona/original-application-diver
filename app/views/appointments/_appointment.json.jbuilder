json.extract! appointment, :id, :message, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
