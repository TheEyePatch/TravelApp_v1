class TourReviewsController < ApplicationController
  before_action :find_tour
  before_action :authenticate_reviewer, only: [:new, :create]

  def index
    @tour_reviews = @tour.tour_reviews.all
  end

  def new
    @tour_review = TourReview.new
  end

  def create
    @tour_review  = TourReview.new(tour_review_params)
    @tour_review.save

    if @tour_review.save
        redirect_to tour_path(@tour_review.tour_id), notice: "Successfully submitted a review"
    else
        redirect_to tour_path(@tour_review.tour_id), alert: @tour_review.errors.full_messages.first
    end
  end

  private

    def find_tour
      @tour = Tour.find(params[:tour_id])
    end

    def tour_review_params
        params.require(:tour_review).permit(:tour_id, :tourist_id, :review, :rating)
    end

    def authenticate_reviewer
        
      unless current_user.type == "Tourist"
          
          redirect_back fallback_location: tour_review_path(@tour), alert: "Only Tourist can submit reviews" 
      end
      
  end
end
