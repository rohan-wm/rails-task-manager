Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "index", to: "tasks#index", as: 'tasks'
  get "index/new", to: "tasks#new", as: 'new_task'
  get "index/:id", to: "tasks#show", as: 'task'
  post "index", to: "tasks#create"
  get "index/:id/edit", to: "tasks#edit", as: 'edit_task'
  patch "index/:id", to: "tasks#update"
  delete "index/:id", to: "tasks#destroy"
end
