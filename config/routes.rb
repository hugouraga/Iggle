Rails.application.routes.draw do
  resources :services
  get 'sessions/new'
  resources :professional_users
  resources :normal_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#index'
  get 'cadastro_cliente', to: 'normal_users#new'
  get 'cadastro_profissional', to: 'professional_users#new'
  get 'login_cliente', to: 'login_cliente#new'
  post 'login_cliente', to: 'login_cliente#create'
  get 'login_profissional', to: 'login_profissional#new'
  post 'login_profissional', to: 'login_profissional#create'
  get 'entrar', to: 'login_users#new'
  # post 'entrar', to:  'login_users#new'
  get 'temp', to: 'static_pages#temp'

  # get 'sair_cliente', to: 'login_cliente#destroy'
end
