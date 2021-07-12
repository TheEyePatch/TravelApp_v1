class ChatRoom < ApplicationRecord
    belongs_to :agency
    belongs_to :tourist

    has_many :messages
end
