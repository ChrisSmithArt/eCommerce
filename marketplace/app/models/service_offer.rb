class ServiceOffer < ApplicationRecord
  belongs_to :user
  belongs_to :service_type

  has_many :bookings
  has_many :cart_items
  has_many :order_items

  def self.ransackable_attributes(auth_object = nil)
    ["caldotcom_link", "created_at", "google_forms_link", "id", "id_value", "service_offer_name", "service_offer_notes", "service_offer_price", "service_type_id", "slot_availabilty", "updated_at", "user_id"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["bookings", "cart_items", "order_items", "service_type", "user"]
  end
end
