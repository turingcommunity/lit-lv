Rails.application.routes.draw do
  root to: "home#index"

  namespace :admin do
    get '/dashboard', to: 'base#dashboard'
    resources :announcements
  end
end
