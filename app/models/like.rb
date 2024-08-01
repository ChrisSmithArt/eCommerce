# frozen_string_literal: true

# model for a User's Likes
class Like < ApplicationRecord
  belongs_to :order_item
  belongs_to :user

  validates :user_id, presence: true
  validates :user_id, numericality: { only_integer: true }
  validates :order_item_id, presence: true
  validates :order_item_id, numericality: { only_integer: true }

  def self.ransackable_attributes(_auth_object = nil)
    %w[created_at id id_value order_item_id updated_at user_id]
  end
end
