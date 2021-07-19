class ReviewsController < ApplicationController
    before_action :authenticate_user!

    def index
        @agency = Agency.find(params[:agency_id])
        @reviews = @agency.reviews.all
    end

    def show
        # redirect_to reviews_path(id: params[:id])
    end

    def new
        @agency = Agency.find(params[:agency_id])
        @review = Review.new
    end

    def create
        
        @review  = Review.new(review_params)
        @review.save

        if @review.save
            redirect_to agency_path(@review.agency_id), notice: "Successfully submitted a review"
        else
            redirect_to root_path, alert: @review.errors.full_messages.first
        end
    end

    private

    def review_params
        params.require(:review).permit(:agency_id, :tourist_id, :review, :rating)
    end
end
