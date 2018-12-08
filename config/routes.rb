Rails.application.routes.draw do
  devise_for :users
  root to: "toppages#index"
  get 'chart/:id', to: 'chart#show', as: 'chart'
  
  get 'reviews/:id', to: 'reviews#new', as: 'review_new'
  post 'reviews/:id', to: 'reviews#create', as: 'review_create'
  delete 'reviews/:id', to: 'reviews#destroy',as: 'review_destroy'
end
