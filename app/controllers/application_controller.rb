class ApplicationController < ActionController::Base
    devise_group :user, contains: [:tourist, :travel_agency]
end
