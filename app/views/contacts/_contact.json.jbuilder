json.extract! contact, :id, :name, :email, :organization, :status, :comment, :note, :created_at, :updated_at
json.url contact_url(contact, format: :json)
