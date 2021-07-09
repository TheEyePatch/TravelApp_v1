class TravelAgency < User
    has_many :tours
    has_many :travel_transactions

    has_many :reviews
end