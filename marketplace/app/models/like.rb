class Like < ApplicationRecord
  belongs_to :order_item
  belongs_to :user

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "order_item_id", "updated_at", "user_id"]
  end
end
