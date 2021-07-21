Rails.application.routes.draw do
  get 'tour_reviews/index'
  get 'tour_reviews/new'
  get 'tour_reviews/create'
  devise_for :tourists
  devise_for :agencies
  devise_for :admins, skip: :registration
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :admins
  resources :agencies, only: [:index, :show] do
    resources :reviews
  end

  resources :tourists , only: :show
  resources :tours, except: [:destroy] do
    resources :tour_reviews
  end

  resources :tourist_tours, except: [:new, :edit, :update]
  resources :travel_transactions, only: [:index]
  resources :chat_rooms, only: [:index, :show]
  resources :messages, only: [:create]
  resources :checkouts, only: [:create]
  resources :webhooks, only: [:create]
  post 'chat_user', to: 'chat_rooms#chat_user', as: 'chat_user'
  get '/tourist_tours/new/:tour_id', to: 'tourist_tours#new', as: 'new_tourist_tour'
  
  root 'home#index'
end
