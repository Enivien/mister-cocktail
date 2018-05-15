Rails.application.routes.draw do
  root "cocktails#index"

  resources :cocktails, only: [:show, :index, :new, :create] do
    resources :doses, only: [:new, :create]
  end

  resources :ingredients, only: [:show, :index]
end
