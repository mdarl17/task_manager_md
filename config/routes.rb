Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/tasks", to: "tasks#index"
  get "/tasks/:id", to: "tasks#show"
  get "/tasks/new", to: "tasks#new"
  
end
