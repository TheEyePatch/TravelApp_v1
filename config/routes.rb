Rails.application.routes.draw do
  devise_for :tourists
  devise_for :agencies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :agencies, only: [:index, :show] 
  resources :tourists , only: :show
  resources :reviews
  resources :tours
  resources :tourist_tours, except: :new
  resources :travel_transactions
  get '/tourist_tours/new/:tour_id', to: 'tourist_tours#new', as: 'new_tourist_tour'
  
  root 'home#index'
end
