class OrderItemStatus < ApplicationRecord
  has_many :order_items

  def self.ransackable_associations(auth_object = nil)
    ["order_items"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "status", "updated_at"]
  end
end
