json.extract! normal_user, :id, :name, :email, :phone, :password_digest, :created_at, :updated_at
json.url normal_user_url(normal_user, format: :json)
