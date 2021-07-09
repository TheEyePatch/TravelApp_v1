class TouristTour < ApplicationRecord
    belongs_to :tour
    belongs_to :tourist

    has_one :travel_transaction
end
