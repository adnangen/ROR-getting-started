Rails.application.routes.draw do

mount Blazer::Engine, at: "blazer"

  resources :roles
  resources :subjects
  # get 'admin/index'
  # get 'sessions/new'

  get 'sessions/create'
  get 'sessions/destroy'

  resources :users

  get 'admin' => 'admin#index'

  
    controller :sessions do
        get 'login' => :new
        post 'login' => :create
        delete 'logout' => :destroy
    end

    

    root 'admin#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end