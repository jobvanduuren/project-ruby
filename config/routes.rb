Rails.application.routes.draw do
  root to: 'batches#index'

  devise_for :users



  resources :batches do
    resources :students
  end


  resources :assessments


end
