Rails.application.routes.draw do
  resources :services
  get 'sessions/new'
  resources :professional_users
  resources :normal_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#index"
  get 'cadastro_cliente', to: 'normal_users#new'
  get 'cadastro_profissional', to: 'professional_users#new'
  get 'entrar', to: 'sessions#new'
  post 'entrar', to: 'sessions#create'
end 
