class Review < ApplicationRecord
    belongs_to :tourist
    belongs_to :travel_agency
end
