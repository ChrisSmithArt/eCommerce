# frozen_string_literal: true

ActiveAdmin.register ServiceOffer do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :service_offer_name, :service_offer_price, :service_offer_notes, :google_forms_link, :caldotcom_link,
                :slot_availabilty, :user_id, :service_type_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:service_offer_name, :service_offer_price, :service_offer_notes, :google_forms_link, :caldotcom_link, :slot_availabilty, :user_id, :service_type_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
