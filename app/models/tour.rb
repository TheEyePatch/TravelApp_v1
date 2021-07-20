class Tour < ApplicationRecord
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0.01 }
    validates :name, presence: true
    validates :location, presence: true
    validates :duration, presence: true, numericality: { greater_than_or_equal_to: 1 }


    belongs_to :agency
    has_many :tourist_tours
    has_many :tourists, through: :tourist_tours
    has_many :tour_reviews

    has_many :travel_transactions, through: :tourist_tours
    has_rich_text :details
    has_many_attached :images
end
