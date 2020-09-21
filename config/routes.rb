Rails.application.routes.draw do 

  resources :comments
  resources :tactical_packages
  resources :users
  

  get "session/status", to: "sessions#is_logged_in?"
  delete "logout/:id", to: "sessions#destroy"
  post "login", to: "sessions#login"

end
