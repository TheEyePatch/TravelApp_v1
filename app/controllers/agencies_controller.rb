class AgenciesController < ApplicationController
    def index
        if tourist_signed_in?
            @agencies = Agency.all
        end
    end
    def show
        @agency = Agency.find(params[:id])
        @tours = @agency.tours
    end
end
