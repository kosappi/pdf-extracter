Rails.application.routes.draw do
  root 'results#index'
  get 'results/index', to: 'results#index'
end
