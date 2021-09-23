class Order < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_many :order_items, dependent: :destroy
  has_many :food_items, through: :order_items
  #validates :reservation_time, presence: true
  #validates :payment_type, presence: true

  def calculate_total_price
    prices = order_items.map do |order_item|
      quantity = order_item.quantity || 1
      price = order_item.food_item.price
      quantity * price
    end
    prices.sum
  end
end
