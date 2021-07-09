Rails.application.routes.draw do
  devise_for :tourists
  devise_for :travel_agencies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
