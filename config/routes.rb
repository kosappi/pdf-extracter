Rails.application.routes.draw do
  root 'results#index'
  get 'index', to: 'results#index'
  get 'new', to: 'results#new'
  post 'create', to: 'results#create'
end
