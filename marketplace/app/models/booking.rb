class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service_offer

  has_one :order_item

  def self.ransackable_attributes(auth_object = nil)
    ["booking_description", "caldotcom_link", "created_at", "google_forms_link", "id", "id_value", "service_offer_id", "updated_at", "user_id"]
  end
end
