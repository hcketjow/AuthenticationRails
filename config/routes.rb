Rails.application.routes.draw do
  devise_for :users
  resources :books
  root "pages#home"
end
