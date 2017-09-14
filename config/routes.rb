Rails.application.routes.draw do

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

    mount Blazer::Engine, at: "blazer"
    
    root 'admin#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end