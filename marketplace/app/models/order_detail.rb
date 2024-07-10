# frozen_string_literal: true

# model for Order Details
class OrderDetail < ApplicationRecord
  belongs_to :user

  has_many :order_items

  def self.ransackable_attributes(_auth_object = nil)
    %w[created_at id id_value stripe_item_id time_of_sale_gst time_of_sale_hst time_of_sale_pst
       time_of_sale_qst updated_at user_id]
  end
end
