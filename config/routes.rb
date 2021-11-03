Rails.application.routes.draw do
  root 'welcome#index'

  namespace :teachers do
    get '/dashboard', to: 'dashboard#show'
  end
end
