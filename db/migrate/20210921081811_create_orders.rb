class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :total_price
      t.string :notes
      t.datetime :reservation_time
      t.string :payment_type
      t.boolean :paid
      t.boolean :completed
      t.string :reservation_name
      t.references :restaurant, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
