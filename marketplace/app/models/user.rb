class User < ApplicationRecord
  belongs_to :tax_rate_by_location

  has_many :service_offers
end
