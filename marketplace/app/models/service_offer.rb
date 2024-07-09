class ServiceOffer < ApplicationRecord
  belongs_to :user
  belongs_to :service_type

  has_many :bookings
  has_many :cart_items
  has_many :order_items
end
