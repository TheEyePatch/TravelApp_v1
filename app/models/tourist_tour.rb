class TouristTour < ApplicationRecord
    belongs_to :tour
    belongs_to :tourist
end
