Rails.application.routes.draw do
  root "batches#index"

  resources :students
  resources :batches
  resources :assessments

end
