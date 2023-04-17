Rails.application.routes.draw do

  resources :chefs, only: [:show] do
    resources :ingredients, only: [:index], controller: 'chefs/ingredients'
  end

  namespace :chefs do
    resources :dishes, only: [:index, :show, :update]
  end


  


end
