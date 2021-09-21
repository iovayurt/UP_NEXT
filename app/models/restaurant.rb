class Restaurant < ApplicationRecord
  has_many :food_items
  has_many :users
  has_many :orders
end
