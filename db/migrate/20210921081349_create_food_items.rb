class CreateFoodItems < ActiveRecord::Migration[6.0]
  def change
    create_table :food_items do |t|
      t.string :name
      t.text :description
      t.float :rating
      t.integer :price
      t.string :category
      t.references :restaurant, null: false, foreign_key: true
      t.timestamps
    end
  end
end
