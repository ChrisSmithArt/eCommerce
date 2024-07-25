class OrderDetailsController < ApplicationController
  before_action :set_breadcrumbs
  def create
    @order_details = OrderDetail.create!(
      user_id:          current_user.id,
      time_of_sale_gst: current_user.tax_rate_by_location.current_gst,
      time_of_sale_hst: current_user.tax_rate_by_location.current_hst,
      time_of_sale_pst: current_user.tax_rate_by_location.current_pst,
      time_of_sale_qst: current_user.tax_rate_by_location.current_qst
    )
    @order_details.save
    current_user.cart.cart_items.each do |cart_item|
      cart_item.service_offer.slot_availabilty -= cart_item.quantity
      cart_item.service_offer.save
      cart_item.quantity.times do
        @booking = Booking.create!(
          user_id:             current_user.id,
          google_forms_link:   cart_item.service_offer.google_forms_link,
          service_offer_id:    cart_item.service_offer.id,
          caldotcom_link:      cart_item.service_offer.caldotcom_link,
          booking_description: cart_item.service_offer.service_offer_notes
        )
        @booking.save
        @order_item = OrderDetail.last.order_items.create!(
          price_before_tax:     cart_item.service_offer.service_offer_price,
          user_id:              cart_item.service_offer.user.id,
          service_offer_id:     cart_item.service_offer.id,
          order_detail_id:      OrderDetail.last.id,
          booking_id:           @booking.id,
          order_item_status_id: 2
        )
        @order_item.save
      end
      current_user.cart.cart_items.each(&:delete_item)
      current_user.cart.total = 0
      current_user.cart.save
    end
    redirect_to root_path
  end

  def show
    @order_detail = OrderDetail.find(params[:id])
    @service_types = ServiceType.all

    add_breadcrumb("home", root_path)
  end

  def index
    @order_details = OrderDetail.where(user_id: current_user.id)
    @service_types = ServiceType.all
  end

  def set_breadcrumbs
    add_breadcrumb("Home", root_path)
  end
end
