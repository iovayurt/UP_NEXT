class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :food_item
  validates :quantity, presence: true
end
