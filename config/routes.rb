Rails.application.routes.draw do
  devise_for :tourists
  devise_for :agencies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :agencies, only: :show
  resources :tourists , only: :show
  resources :reviews
  resources :tours
  resources :tourist_tours, except: :new
  get '/tourist_tour/new/:tours_id', to: 'tourist_tours#new', as: 'new_tourist_tour'
  
  root 'home#index'
end
