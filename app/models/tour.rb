class Tour < ApplicationRecord
    belongs_to :agency
    has_many :tourist_tours
    has_many :tourists, through: :tourist_tours

    has_many :travel_transactions, through: :tourist_tours
end
