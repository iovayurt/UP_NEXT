class Order < ApplicationRecord
  belongs_to :restaurant
  has_many :order_items
  has_many :food_items, through: :order_items
end
