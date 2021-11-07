Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations' }

  devise_scope :user do
    get '/users/auth/:provider/callback', to: 'users/sessions#create'
  end

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
end
