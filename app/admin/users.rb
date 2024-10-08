# frozen_string_literal: true

ActiveAdmin.register User do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_name, :password, :email, :description, :address, :tax_rate_by_location_id, :image

  remove_filter :image_attachment, :image_blob
  config.filters = false
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_name, :password, :email, :description, :address, :tax_rate_by_location_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form title: 'New User' do |f|
    inputs 'Details' do
      input :user_name
      input :password
      input :email
      input :description
      input :address
      input :tax_rate_by_location
      input :image, :as => :file
    end
    actions do
      action :submit, :as => :button
    end
  end
end
