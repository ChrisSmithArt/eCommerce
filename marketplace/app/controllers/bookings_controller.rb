class BookingsController < ApplicationController
  before_action :set_breadcrumbs

  def create
    @booking = Booking.create!(booking_params)
    @order_item.save
  end

  def show
    @bookings = Booking.find(params[:id])
    @service_types = ServiceType.all

    add_breadcrumb("home", root_path)
  end

  def index
    @bookings = Booking.where(user_id: current_user.id)
    @service_types = ServiceType.all
  end

  def set_breadcrumbs
    add_breadcrumb("Home", root_path)
  end

  def booking_params
    params.require(:order_item).permit(:booking_description, :google_forms_link, :caldotcom_link,
                                       :user_id, :service_offer_id)
  end
end
