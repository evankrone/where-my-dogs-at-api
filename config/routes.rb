Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/index', to: "index"
  resources :owners
  resources :walks
  resources :walkers

  post "/ownersignup", to: "owners#create"
  post "/ownerlogin", to: "auth#ownerlogin"
  post "/walkersignup", to: "walkers#create"
  post "/walkerlogin", to: "auth#walkerlogin"
  post "/walks", to: "walks#create"

  patch "/walks/", to: "walks#update"

  get "/auto_login", to: "auth#auto_login"
  get "/ownerlogin", to: "owners#index"

end
