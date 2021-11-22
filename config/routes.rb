Rails.application.routes.draw do

  devise_for :users

  unauthenticated do
    root "users#home"
  end

  root "groups#index", as: "moneytrack"

  resources :groups, only: [:new, :show, :create]
end
