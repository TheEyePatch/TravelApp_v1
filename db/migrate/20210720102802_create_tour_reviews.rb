class CreateTourReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :tour_reviews do |t|
      t.belongs_to :tour
      t.belongs_to :tourist
      t.text :review
      t.decimal :rating

      t.timestamps
    end
  end
end
