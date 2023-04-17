Rails.application.routes.draw do
  resources :chefs, only: [:show] do
    resources :dishes, only: [:index, :show]
  end
end
