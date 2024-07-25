# frozen_string_literal: true

# model for Users, which are both Customers and Providers.
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :tax_rate_by_location
  # validates_associated :tax_rate_by_location
  has_many :service_offers
  # validates_associated :service_offers
  has_many :likes
  # validates_associated :likes
  has_many :bookings
  # validates_associated :bookings
  has_one :cart
  # validates :cart, presence: true
  has_many :order_details
  # validates_associated :order_details
  has_many :order_items
  # validates_associated :order_items

  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_fit: [100, 100]
    attachable.variant :avatar, resize_to_fit: [250, 250]
    attachable.variant :full, resize_to_fit: [500, 500]
  end

  validates :user_name, presence: true
  # validates :user_name, uniqueness: true
  # validates :user_name, exclusion: { in: %w[admin superuser] }

  # validates :email, presence: true
  # validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  # validates :email, uniqueness: true

  # validates :address, presence: true

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
  accepts_nested_attributes_for :tax_rate_by_location
end
