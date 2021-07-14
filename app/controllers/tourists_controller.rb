class TouristsController < ApplicationController
    before_action :authenticate_user!
    def show
        if current_tourist
            @tourist = current_tourist
        else
            @tourist = Tourist.find(params[:id])
        end
    end
end
