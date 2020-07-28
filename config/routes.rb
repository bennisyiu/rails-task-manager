Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #READ

  #read all of the tasks
  get '/tasks', to: "tasks#index"

  #1st get the blank form
  get '/tasks/new', to: "tasks#new"

  #read one task
  get '/tasks/:id', to: "tasks#show", as: :task

  #CREATE

  #2nd save the form to the db
  post '/tasks', to: "tasks#create"

  #UPDATE

  #1st get the restaurant form
  get '/tasks/:id/edit', to: "tasks#edit", as: :edit

  #2nd send the info to the database
  patch '/tasks/:id', to: "tasks#update"

  #DESTROY
  delete '/tasks/:id', to: "tasks#destroy"
end
