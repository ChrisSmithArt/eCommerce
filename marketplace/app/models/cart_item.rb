# frozen_string_literal: true

# model for Cart Items
class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :service_offer

  def self.ransackable_attributes(_auth_object = nil)
    %w[cart_id created_at id id_value quantity service_offer_id updated_at]
  end
end
