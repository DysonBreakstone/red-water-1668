Rails.application.routes.draw do
  resources :chefs, only: [:show]
  
  namespace :chefs do
    resources :dishes, only: [:index, :show]
  end
end
