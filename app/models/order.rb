class Order < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_many :order_items, dependent: :destroy
  has_many :food_items, through: :order_items
  #validates :reservation_time, presence: true
  #validates :payment_type, presence: true
end
