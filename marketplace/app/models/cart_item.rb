class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :service_offer

  def self.ransackable_attributes(auth_object = nil)
    ["cart_id", "created_at", "id", "id_value", "quantity", "service_offer_id", "updated_at"]
  end
end
