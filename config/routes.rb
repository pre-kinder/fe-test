Rails.application.routes.draw do
  root 'welcome#index'
  get '/auth/:provider/callback', to: 'sessions#create'
  post '/', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  namespace :parent do
    # resources :parents, only: :index, as: 'dashboard'
    get '/register', to: 'parents#create'
    get '/dashboard', to: 'parents#show'
    get '/profile', to: 'parents#edit'
  end
  # resources :parents, only: :index, as: 'dashboard'
  # resources :parents, only: :show, as: 'profile'

  namespace :teacher do
    get '/register', to: 'teachers#create'
    get '/dashboard', to: 'teachers#index'
    get '/:id/profile', to: 'teachers#show'
  end

  namespace :admin do
    get '/dashboard', to: 'admin#index'
  end

end
