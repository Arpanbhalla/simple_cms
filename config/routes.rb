Rails.application.routes.draw do

  get 'users/index'

  get 'users/show'

  get 'users/edit'

  get 'users/update'

  get 'users/delete'

  get 'admin', :to => 'access#menu'
  get 'access/menu'
  post 'access/login'
  post 'access/attempt_login'
  get 'access/logout'


resources :subjects do
  member do
    get :delete
  end
end

  resources :pages do
  member do
    get :delete
  end
end

resources :sections do
  member do
    get :delete
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
