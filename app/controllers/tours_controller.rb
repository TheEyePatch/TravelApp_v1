class ToursController < ApplicationController
    before_action :authenticate_agency! , except: [:index, :show]
    
    def index
        if tourist_signed_in?
            @tours = Tour.all
        elsif agency_signed_in?
            @tours = current_agency.tours.all
        end
    end

    def show
        @tour = Tour.find(params[:id])
    end

    def new
        @tour = current_agency.tours.build
    end

    def create
        @tour = current_agency.tours.build(tour_params)

        if @tour.valid?
            @tour.save
            redirect_to tours_path, notice: "Successfully created #{@tour.name} package"
        else
            redirect_to new_tour_path, alert: @tour.errors.full_messages.first
        end
    end

    private

    def tour_params
        params.require(:tour).permit(:name, :price, :location, :duration)
    end
end
