Rails.application.routes.draw do
root "dashboard#index"

  namespace :admin do
    get '/dashboard', to: 'base#dashboard'
    resources :announcements
  end

end
