Rails.application.routes.draw do
  
  
  get "/" => "home#top"
  get "about" => "home#about"
  
  
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "posts/index" => "posts#index"
  get "posts/:id" => "posts#show"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  
  
  
  get "signup" => "users#new"
  post "users/create" => "users#create"
  get "users/index"
  get "users/:id/" => "users#show"
  get "users/:id/" => "users#show"
  get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update" 
  post "users/:id/destroy" => "users#destroy"
  
  get "login" => "users#login_form"
  
  post "login" => "users#login"
  post "logout" => "users#logout"
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
