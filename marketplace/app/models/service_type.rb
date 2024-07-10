# frozen_string_literal: true

# model for a Type of Service which is a Category for Service Offers
class ServiceType < ApplicationRecord
  has_many :service_offers

  def self.ransackable_associations(_auth_object = nil)
    ["service_offers"]
  end

  def self.ransackable_attributes(_auth_object = nil)
    %w[created_at id id_value meeting_required service_type_description service_type_name
       updated_at]
  end

  def display_name
    service_type_name
  end
end
