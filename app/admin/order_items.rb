# frozen_string_literal: true

ActiveAdmin.register OrderItem do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :booking_id, :order_detail_id, :order_item_status_id, :price_before_tax, :service_offer_id, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:province, :current_gst, :current_hst, :current_pst, :current_qst]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
