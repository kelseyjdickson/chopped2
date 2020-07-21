class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :num_of_stars
      t.string :rating
      t.references :diner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
