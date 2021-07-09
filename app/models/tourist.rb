class Tourist < User
    has_many :tourist_tours
    has_many :tours, through: :tourist_tours

    has_many :travel_transactions

    has_many :reviews
end