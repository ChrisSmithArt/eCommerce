# frozen_string_literal: true

ActiveAdmin.register TaxRateByLocation do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :province, :current_gst, :current_hst, :current_pst, :current_qst
  #
  # or
  #
  # permit_params do
  #   permitted = [:province, :current_gst, :current_hst, :current_pst, :current_qst]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
