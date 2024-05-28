Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  get "tasks/new", to: 'tasks#new', as: 'new_task' # Show create FORM
  post "tasks", to: 'tasks#create' #create a new task

  get "tasks", to: 'tasks#index' # Show all tasks
  get "tasks/:id", to: 'tasks#show', as: 'task' # Show one task

  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task' # Show edit FORM
  patch 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy', as: 'destroy_task' # Remove one task

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
