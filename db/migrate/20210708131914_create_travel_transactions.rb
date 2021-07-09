class CreateTravelTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :travel_transactions do |t|
      t.belongs_to :tourist_tour
      t.belongs_to :agency
      t.integer :total_guest
      t.decimal :total_price
      t.timestamps
    end
  end
end
