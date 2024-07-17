# frozen_string_literal: true

# model for the user's Cart
class Cart < ApplicationRecord
  belongs_to :user
  # validates_associated :user
  has_many :order_items
  # validates_associated :order_items
  has_many :cart_items
  # validates_associated :cart_items

  def self.ransackable_attributes(_auth_object = nil)
    %w[created_at id id_value total updated_at user_id]
  end
end
