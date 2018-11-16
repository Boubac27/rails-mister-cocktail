Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :doses
  resources :cocktails
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'cocktails/new', to: 'cocktails#new', as: :new
  get 'cocktails/:id', to: 'cocktails#show', as: :task
  post 'cocktails', to: 'cocktails#create'
  get 'cocktails', to: 'cocktails#index', as: :index
  get 'cocktails/:id/edit', to: 'cocktails#edit'
  patch 'cocktails/:id', to: 'cocktails#update'
  delete 'cocktails/:id', to: 'cocktails#destroy', as: :delete
end
