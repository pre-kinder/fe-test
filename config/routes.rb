Rails.application.routes.draw do
  root 'welcome#index'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations' }

  devise_scope :user do
    get '/users/auth/:provider/callback', to: 'users/sessions#create'
  end

  get 'welcome', to: 'welcome#show'

  namespace :teachers do
    get '/dashboard', to: 'dashboard#index'
    get '/register', to: 'registration#new'
    post '/register', to: 'registration#create'
    # get '/profile', to: 'dashboard#show'
    get '/profile/edit', to: 'dashboard#edit'
    patch '/profile/edit', to: 'dashboard#update'

    get '/attendance', to: 'dashboard#attendance'
  end

  resources :parents do
    get '/children', to: 'parents#children'
  end
end
