Rails.application.routes.draw do
 
  resources :comments
  resources :actors
  resources :directors, only: [:create]

  post "/login", to: "directors#login"
  get "/persist", to: 'directors#persist'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
