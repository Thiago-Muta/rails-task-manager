Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # listar todos os tasks
  get 'tasks', to: 'tasks#index'
  # mostrar um form de criar
  get 'tasks/new', to: 'tasks#new'
  # mostrar um task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # salva o task no db
  post 'tasks', to: 'tasks#create'
  # mostrar um form de edit
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  # atualizar o task no db
  patch 'tasks/:id', to: 'tasks#update'
  # deletar um task
  delete 'tasks/:id', to: 'tasks#destroy'
end
