class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :travel_agency
      t.belongs_to :tourist
      t.text :review
      t.decimal :rating
      t.timestamps
    end
  end
end
