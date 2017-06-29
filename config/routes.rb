Rails.application.routes.draw do
  devise_for :users
  root "batches#index"

  resources :students
  resources :batches
  resources :assessments

end
