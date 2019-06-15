Rails.application.routes.draw do
  resources :addresses
  resources :services
  resources :contacts, only: [:new, :create]

  resources :professional_users
  resources :normal_users
  resources :schedules

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#index"
  #get 'sessions/new'
  get 'cadastro', to: 'static_pages#cadastro'
  get 'cadastro_cliente', to: 'normal_users#new'
  get 'cadastro_profissional', to: 'professional_users#new'
  get 'login_cliente', to: 'login_cliente#new'
  post 'login_cliente', to: 'login_cliente#create'
  get 'login_profissional', to: 'login_profissional#new'
  post 'login_profissional', to: 'login_profissional#create'
  get 'entrar', to: 'login_users#new'
  get 'meus_servicos', to: 'services#index'
  get 'meus_enderecos', to: 'addresses#index'
  # post 'entrar', to:  'login_users#new'
  get 'temp', to: 'static_pages#temp'
  delete 'saircliente', to: 'login_cliente#destroy'
  delete 'sairprofissional', to: 'login_profissional#destroy'
  get 'servicos_profissional', to:'services#professional_services'
  get 'busca_profissional', to:'professional_users#index'
  get 'busca_servico_nome', to: 'services#services_name'
  get 'busca_endereco_nome', to: 'services#addresses_names'
  get 'busca_profissional_profissao', to: 'professional_users#professionals_profession'
  get '/:id' => 'professional_users#profile_professional_user', as: :perfil_profissional
  #get 'servicos_profissional', to: 'professional_users#professional_services'
  #get 'editar_profissional', to: 'professional_users#edit'
end
