Rails.application.routes.draw do

  root 'access#menu'
  resources :gymsites, only: [:index, :new, :edit, :create, :set_current_gymsite] do
    get :set_current_gymsite
  end

  get 'admin', to: 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'


end
