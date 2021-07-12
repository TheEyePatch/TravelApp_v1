class CreateChatRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :chat_rooms do |t|
      t.belongs_to :agency
      t.belongs_to :tourist
      t.timestamps
    end
  end
end
