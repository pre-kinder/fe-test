Rails.application.routes.draw do
  # devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations' }

  # devise_scope :user do
  #   get '/users/auth/:provider/callback', to: 'users/sessions#create'
  # end

  get '/register', to: 'registrations#new'

  root 'welcome#index'

  namespace :teachers do
    get '/dashboard', to: 'dashboard#index'
    get '/register', to: 'registration#new'
    post '/register', to: 'registration#create'
    get '/profile', to: 'dashboard#show'
    get '/profile/edit', to: 'dashboard#edit'
  end

  resources :parents

  # get '/auth/:provider/callback', to: 'sessions#create'
  # post '/', to: 'sessions#create'
  # delete '/logout', to: 'sessions#destroy'
  # get '/register', to: 'register#index', as: 'register_main'
  #
  # get '/parents/register', to: 'parents#new'
  # get '/parents/:id/dashboard', to: 'parents#show', as: 'parents_dashboard'
  # get '/parents/:id/profile', to: 'parents#edit', as: 'parents_profile'

  # get '/teachers/register', to: 'teachers#new'
  # get '/teachers/:id/dashboard', to: 'teachers#show', as: 'teachers_dashboard'
  # get '/teachers/:id/profile', to: 'teachers#edit', as: 'teachers_profile'
end
