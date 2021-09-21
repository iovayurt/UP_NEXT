class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.float :rating
      t.string :speciality
      t.float :latitude
      t.float :longitude
      t.integer :capacity

      t.timestamps
    end
  end
end
