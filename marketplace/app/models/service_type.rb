class ServiceType < ApplicationRecord
  has_many :service_offers

  def self.ransackable_associations(auth_object = nil)
    ["service_offers"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "meeting_required", "service_type_description", "service_type_name", "updated_at"]
  end
end
