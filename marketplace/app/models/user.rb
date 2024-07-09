class User < ApplicationRecord
  belongs_to :tax_rate_by_location

  has_many :service_offers
  has_many :likes
  has_many :bookings
  has_one :cart
  has_many :order_details
  has_many :order_items
end
