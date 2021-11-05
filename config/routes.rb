Rails.application.routes.draw do
  root 'welcome#index'
  get '/auth/:provider/callback', to: 'sessions#create'
  # post '/', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/register', to: 'register#index', as: 'register_main'

  get '/parents/register', to: 'parents#new'
  post '/parents/register', to: 'parents#create'
  get '/parents/:id/dashboard', to: 'parents#show', as: 'parents_dashboard'
  get '/parents/:id/profile', to: 'parents#edit', as: 'parents_profile'

  get '/teachers/register', to: 'teachers#new'
  get '/teachers/:id/dashboard', to: 'teachers#show', as: 'teachers_dashboard'
  get '/teachers/:id/profile', to: 'teachers#edit', as: 'teachers_profile'
end
