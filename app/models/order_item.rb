class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :food_item
end
