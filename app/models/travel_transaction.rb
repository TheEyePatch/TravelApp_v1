class TravelTransaction < ApplicationRecord
    belongs_to :tourist
    belongs_to :tour
    belongs_to :travel_agency
end
