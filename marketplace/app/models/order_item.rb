class OrderItem < ApplicationRecord
  belongs_to :user
  belongs_to :service_offer
  belongs_to :order_details
  belongs_to :booking
  belongs_to :order_item_status
end
