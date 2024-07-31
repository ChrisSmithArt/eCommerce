# frozen_string_literal: true

# model for a Service Offer
class ServiceOffer < ApplicationRecord
  belongs_to :user
  belongs_to :service_type

  has_many(:bookings, dependent: :destroy)
  has_many(:cart_items, dependent: :destroy)
  has_many(:order_items, dependent: :destroy)

  validates :service_offer_name, presence: true
  validates :service_offer_notes, presence: true
  validates :service_offer_price, presence: true

  validates :service_offer_price, numericality: { only_integer: true }

  def self.ransackable_attributes(_auth_object = nil)
    %w[caldotcom_link created_at google_forms_link id id_value service_offer_name
       service_offer_notes service_offer_price service_type_id slot_availabilty updated_at user_id]
  end

  def self.ransackable_associations(_auth_object = nil)
    %w[bookings cart_items order_items service_type user]
  end

  def display_name
    service_offer_name
  end
end
