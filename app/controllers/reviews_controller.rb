class ReviewsController < ApplicationController
    before_action :find_agency
    before_action :authenticate_reviewer, only: [:new, :create]

    def index
        @reviews = @agency.reviews.all
    end

    def show
        # redirect_to reviews_path(id: params[:id])
    end

    def new
        @review = Review.new
    end

    def create
        
        @review  = Review.new(review_params)
        @review.save

        if @review.save
            redirect_to agency_path(@review.agency_id), notice: "Successfully submitted a review"
        else
            redirect_to agency_path(@review.agency_id), alert: @review.errors.full_messages.first
        end
    end

    private

    def find_agency
        @agency = Agency.find(params[:agency_id])
    end

    def review_params
        params.require(:review).permit(:agency_id, :tourist_id, :review, :rating)
    end

    def authenticate_reviewer
        
        unless current_user.type == "Tourist"
            
            redirect_back fallback_location: agency_path(@agency), alert: "Only Tourist can submit reviews" 
        end
        
    end


    
end
