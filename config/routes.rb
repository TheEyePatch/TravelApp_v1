Rails.application.routes.draw do
  devise_for :tourists
  devise_for :agencies
  devise_for :admins, skip: :registration
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :admins
  resources :agencies, only: [:index, :show]
  resources :tourists , only: :show
  resources :reviews
  resources :tours
  resources :tourist_tours, except: :new
  resources :travel_transactions
  resources :chat_rooms
  resources :messages
  post 'chat_user', to: 'chat_rooms#chat_user', as: 'chat_user'
  get '/tourist_tours/new/:tour_id', to: 'tourist_tours#new', as: 'new_tourist_tour'
  
  root 'home#index'
end
