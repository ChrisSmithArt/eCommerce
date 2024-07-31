# frozen_string_literal: true

ActiveAdmin.register OrderDetail do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment

  permit_params :time_of_sale_gst, :time_of_sale_hst, :time_of_sale_pst, :time_of_sale_qst
  #

end
