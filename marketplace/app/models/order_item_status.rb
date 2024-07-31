# frozen_string_literal: true

# model for the various Statuses for an Order Item
class OrderItemStatus < ApplicationRecord
  has_many(:order_items, dependent: :destroy)

  validates :status, presence: true

  def self.ransackable_associations(_auth_object = nil)
    ["order_items"]
  end

  def self.ransackable_attributes(_auth_object = nil)
    %w[created_at id id_value status updated_at]
  end

  def display_name
    status
  end
end
