class CreateTours < ActiveRecord::Migration[6.1]
  def change
    create_table :tours do |t|
      t.belongs_to :travel_agency
      t.string :name
      t.decimal :price
      t.string :location
      t.integer :duration
      t.timestamps
    end
  end
end
