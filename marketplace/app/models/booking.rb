class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service_offer

  has_one :order_item
end
