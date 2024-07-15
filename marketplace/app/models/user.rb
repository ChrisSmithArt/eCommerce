# frozen_string_literal: true

# model for Users, which are both Customers and Providers.
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :tax_rate_by_location

  has_many :service_offers
  has_many :likes
  has_many :bookings
  has_one :cart
  has_many :order_details
  has_many :order_items

  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

  def self.ransackable_associations(_auth_object = nil)
    %w[bookings cart likes order_details order_items service_offers tax_rate_by_location image_blob
       image_attachment]
  end

  def self.ransackable_attributes(_auth_object = nil)
    %w[address created_at description email id id_value password tax_rate_by_location_id
       updated_at user_name]
  end

  def display_name
    user_name
  end
end
