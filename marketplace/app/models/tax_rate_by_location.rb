class TaxRateByLocation < ApplicationRecord
  has_many :users

  def self.ransackable_associations(auth_object = nil)
    ["users"]
  end
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "current_gst", "current_hst", "current_pst", "current_qst", "id", "id_value", "province", "updated_at"]
  end
end
