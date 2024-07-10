# frozen_string_literal: true

# model for an Order Item
class OrderItem < ApplicationRecord
  belongs_to :user
  belongs_to :service_offer
  belongs_to :order_details
  belongs_to :booking
  belongs_to :order_item_status

  has_one :like

  def self.ransackable_attributes(_auth_object = nil)
    %w[booking_id created_at id id_value order_details_id order_item_status_id price_before_tax
       service_offer_id updated_at user_id]
  end
end
