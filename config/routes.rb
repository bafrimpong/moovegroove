Rails.application.routes.draw do
  get 'landingpages/homepage'
  # devise_for :users
  devise_for :users, controllers: {
    :registrations => "users/registrations",
    :sessions => "users/sessions",
    :passwords => "users/passwords",
    :confirmations => "users/confirmations",
    :unlocks => "users/unlocks"
  }, path_names: {
    sign_in: 'signin',
    sign_out: 'signout',
    password: 'password',
    confirmation: 'verification',
    unlock: 'unblock',
    registration: 'registration',
    sign_up: 'signup'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :activities
  resources :user_activities
  
  root to: 'landingpages#homepage'
end
