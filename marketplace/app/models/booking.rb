# frozen_string_literal: true

# model for Bookings
class Booking < ApplicationRecord
  belongs_to :user
  validates_associated :user
  belongs_to :service_offer
  validates_associated :service_offer
  has_one :order_item
  validates_associated :order_item

  validates :google_forms_link, presence: true
  validates :booking_description, presence: true

  def self.ransackable_attributes(_auth_object = nil)
    %w[booking_description caldotcom_link created_at google_forms_link id id_value service_offer_id
       updated_at user_id]
  end

  def self.ransackable_associations(auth_object = nil)
    ["order_item", "service_offer", "user"]
  end

  def display_name
    "Booking #{id}"
  end
end
