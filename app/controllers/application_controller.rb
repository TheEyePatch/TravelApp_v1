class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    devise_group :user, contains: [:tourist, :agency]

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: %i[type username first_name last_name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name,:profile_pic]) 
      end
end
