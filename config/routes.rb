Rails.application.routes.draw do
  root 'welcome#index'
  get '/auth/:provider/callback', to: 'sessions#create'
  # post '/', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/register', to: 'register#index'

  # namespace :parent do
    # resources :parents, only: :index, as: 'dashboard'
    get '/parents/register', to: 'parents#new'
    get '/parents/dashboard', to: 'parents#index'
    get '/parents/:id/profile', to: 'parents#show'
  # end
  # resources :parents, only: :index, as: 'dashboard'
  # resources :parents, only: :show, as: 'profile'

  # namespace :teacher do
    get '/teachers/register', to: 'teachers#new'
    get '/teachers/dashboard', to: 'teachers#index'
    get '/teachers/:id/profile', to: 'teachers#show'
  # end

  namespace :admin do
    get '/dashboard', to: 'admin#index'
  end

end
