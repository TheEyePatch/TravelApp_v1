class TravelTransactionsController < ApplicationController
    before_action :authenticate_user!

    def index
        if tourist_signed_in? || agency_signed_in? 
            @travel_transactions = current_user.travel_transactions
        end
    end
end
