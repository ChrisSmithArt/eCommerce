class User < ApplicationRecord
  belongs_to :tax_rate_by_location

  has_many :service_offers
  has_many :likes
  has_many :bookings
  has_one :cart
  has_many :order_details
  has_many :order_items

  def self.ransackable_associations(auth_object = nil)
    ["bookings", "cart", "likes", "order_details", "order_items", "service_offers", "tax_rate_by_location"]
  end
  def self.ransackable_attributes(auth_object = nil)
    ["address", "created_at", "description", "email", "id", "id_value", "password", "tax_rate_by_location_id", "updated_at", "user_name"]
  end
end
