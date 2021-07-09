class CreateTravelTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :travel_transactions do |t|
      t.belongs_to :tour
      t.belongs_to :tourist
      t.belongs_to :travel_agency
      t.string :package_name
      t.decimal :price
      t.timestamps
    end
  end
end
