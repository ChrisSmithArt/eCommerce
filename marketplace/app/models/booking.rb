class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service_offer
end
