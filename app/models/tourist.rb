class Tourist < User
    has_many :tourist_tours
    has_many :tours, through: :tourist_tours

    has_many :travel_transactions, through: :tourist_tours
    has_many :reviews
    has_many :chat_room_users, foreign_key: 'user_id'
    has_many :chat_rooms, through: :chat_room_users

    def agency_room(agency)
        chat_rooms.select { |chat_room| chat_room.users.include?(agency)}.first
    end
end