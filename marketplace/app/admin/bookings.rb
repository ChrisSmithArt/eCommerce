# frozen_string_literal: true

ActiveAdmin.register Booking do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :booking_description, :google_forms_link, :caldotcom_link, :user_id, :service_offer_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:province, :current_gst, :current_hst, :current_pst, :current_qst]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
