Rails.application.routes.draw do
  # index, show, new, create, update, edit, destroy
  # Read
  get '/tasks', to: 'tasks#index'
  # New
  get '/tasks/new', to: 'tasks#new', as: :new_task

  get '/tasks/:id', to: 'tasks#show', as: :task

  # Create
  post '/tasks', to: 'tasks#create'
  # Update
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'
  # Destroy
  delete '/tasks/:id', to: 'tasks#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
