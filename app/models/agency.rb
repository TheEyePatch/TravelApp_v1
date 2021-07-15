class Agency < User
    has_many :tours
    has_many :travel_transactions

    has_many :reviews
    has_many :chat_room_users, foreign_key: 'user_id'
    has_many :chat_rooms, through: :chat_room_users
end