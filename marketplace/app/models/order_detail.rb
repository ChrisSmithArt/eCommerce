# frozen_string_literal: true

# model for Order Details
class OrderDetail < ApplicationRecord
  belongs_to :user

  has_many(:order_items, dependent: :destroy)

  validates :time_of_sale_gst, presence: true
  validates :time_of_sale_gst, numericality: { only_integer: true }

  validates :time_of_sale_pst, presence: true
  validates :time_of_sale_pst, numericality: { only_integer: true }

  validates :time_of_sale_qst, presence: true
  validates :time_of_sale_qst, numericality: { only_integer: true }

  validates :time_of_sale_hst, presence: true
  validates :time_of_sale_hst, numericality: { only_integer: true }

  def self.ransackable_attributes(_auth_object = nil)
    %w[created_at id id_value stripe_item_id time_of_sale_gst time_of_sale_hst time_of_sale_pst
       time_of_sale_qst updated_at user_id]
  end

  def self.ransackable_associations(_auth_object = nil)
    ["order_items", "user"]
  end

  def display_name
    "Order #{id}"
  end
end
