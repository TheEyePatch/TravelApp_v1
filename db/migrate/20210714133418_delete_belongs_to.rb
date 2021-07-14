class DeleteBelongsTo < ActiveRecord::Migration[6.1]
  def change
    remove_belongs_to :chat_rooms, :agency
    remove_belongs_to :chat_rooms, :tourist
  end
end
