# frozen_string_literal: true

# model for Tax Rates.
class TaxRateByLocation < ApplicationRecord
  has_many :users
  # validates_associated :users

  def self.ransackable_associations(_auth_object = nil)
    ["users"]
  end

  def self.ransackable_attributes(_auth_object = nil)
    %w[created_at current_gst current_hst current_pst current_qst id id_value province
       updated_at]
  end

  def display_name
    province
  end
end
