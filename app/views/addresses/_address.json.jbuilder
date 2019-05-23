json.extract! address, :id, :name, :number, :description, :postal_code, :district, :city, :state, :created_at, :updated_at
json.url address_url(address, format: :json)
