class AgenciesController < ApplicationController
    before_action :authenticate_user!
    def show
        if current_agency
            @agency = current_agency
        else
            @agency = Agency.find(params[:id])
        end
        @tours = @agency.tours
    end
end
