Rails.application.routes.draw do
  root 'welcome#index'
  get '/auth/:provider/callback', to: 'sessions#create'
  # post '/', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/register', to: 'register#index', as: 'register_main'

  # resources :parents, only: :show, as: 'parents_profile'
  namespace :parents do
    get '/register', to: 'parents#new'
    get '/dashboard', to: 'parents#index'
    get '/:id/profile', to: 'parents#show', as: 'profile'
  end

  namespace :teachers do
    get '/register', to: 'teachers#new'
    get '/dashboard', to: 'teachers#index'
    get '/:id/profile', to: 'teachers#show', as: 'profile'
  end

  # namespace :admin do
  #   get '/dashboard', to: 'admin#index'
  # end
end
