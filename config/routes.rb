Rails.application.routes.draw do
  devise_for :tourists
  devise_for :agencies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :tours
  resources :tourist_tours
  root 'home#index'
end
