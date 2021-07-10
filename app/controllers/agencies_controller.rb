class AgenciesController < ApplicationController
    before_action :authenticate_user!
    def show
        @agency = Agency.find(params[:id])
    end
end
