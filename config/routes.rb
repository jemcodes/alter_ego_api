Rails.application.routes.draw do
  root "animals#index"
  
  resources :animals, only: [:index, :show, :destroy]
end
