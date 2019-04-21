Rails.application.routes.draw do
  resources :professional_users
  resources :normal_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#index"
end
