Rails.application.routes.draw do

  devise_for :users

  unauthenticated do
    root "users#home"
  end

  root "users#new", as: "moneytrack"
end
