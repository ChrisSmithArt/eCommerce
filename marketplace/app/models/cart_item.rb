# frozen_string_literal: true

# model for Cart Items
class CartItem < ApplicationRecord
  belongs_to :cart
  validates_associated :cart
  belongs_to :service_offer
  validates_associated :service_offer

  # validates :quanity, presence: true
  # validates :quantity, numericality: { only_integer: true }

  def add_one_item
    increment(:quantity)
    save
  end

  def remove_one_item
    decrement(:quantity)
    save
  end

  def delete_item
    destroy
  end

  def self.ransackable_attributes(_auth_object = nil)
    %w[cart_id created_at id id_value quantity service_offer_id updated_at]
  end
end
