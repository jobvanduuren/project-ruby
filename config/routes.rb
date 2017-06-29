Rails.application.routes.draw do
  root to: 'batches#index'

  devise_for :users



  resources :batches

  resources :students 
  resources :assessments


end
