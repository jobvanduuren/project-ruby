Rails.application.routes.draw do
  root to: 'batches#index'

  devise_for :users


  resources :students
  resources :batches
  resources :assessments

end
