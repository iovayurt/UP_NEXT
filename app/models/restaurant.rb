class Restaurant < ApplicationRecord
  has_many :food_items, dependent: :destroy
  has_many :orders, dependent: :destroy
  validates :name, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  include PgSearch::Model
  pg_search_scope :search_by_location_name_speciality,
    against: [ :location, :name, :speciality ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

end
