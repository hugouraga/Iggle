Rails.application.routes.draw do
  resources :services
  resources :contacts, only: [:new, :create]
  get 'sessions/new'
  resources :professional_users
  resources :normal_users
  resources :schedules
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#index"
  get 'cadastro', to: 'static_pages#cadastro'
  get 'cadastro_cliente', to: 'normal_users#new'
  get 'cadastro_profissional', to: 'professional_users#new'
  get 'login_cliente', to: 'login_cliente#new'
  post 'login_cliente', to: 'login_cliente#create'
  get 'login_profissional', to: 'login_profissional#new'
  post 'login_profissional', to: 'login_profissional#create'
  get 'entrar', to: 'login_users#new'
  get 'meus_servicos', to: 'services#index'
  # post 'entrar', to:  'login_users#new'
  get 'temp', to: 'static_pages#temp'
  delete 'saircliente', to: 'login_cliente#destroy'
  delete 'sairprofissional', to: 'login_profissional#destroy'
end
