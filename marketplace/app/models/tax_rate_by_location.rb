# frozen_string_literal: true

# model for Tax Rates.
class TaxRateByLocation < ApplicationRecord
  has_many(:users, dependent: :destroy)
  validates_associated :users

  validates :current_gst, presence: true
  validates :current_gst, numericality: { only_integer: true }

  validates :current_pst, presence: true
  validates :current_pst, numericality: { only_integer: true }

  validates :current_qst, presence: true
  validates :current_qst, numericality: { only_integer: true }

  validates :current_hst, presence: true
  validates :current_hst, numericality: { only_integer: true }

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
