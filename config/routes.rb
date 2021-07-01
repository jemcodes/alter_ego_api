Rails.application.routes.draw do
  root "animals#index"
  
  resources :animals, only: [:index, :show, :create, :update, :destroy]
end
