class Cart < ApplicationRecord
  belongs_to :user

  has_many :order_items

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "total", "updated_at", "user_id"]
  end
end
