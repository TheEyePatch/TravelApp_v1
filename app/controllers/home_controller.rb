class HomeController < ApplicationController
    before_action :authenticate_user!
    before_action :redirect
    def index; end

    private

    def redirect
        if agency_signed_in?
            redirect_to tours_path, notice: 'Succesfully Signed-in!'
        end
    end
end
