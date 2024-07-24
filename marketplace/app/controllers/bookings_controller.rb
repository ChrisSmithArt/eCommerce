class BookingsController < ApplicationController
  def create
    @booking = Booking.create!(booking_params)
    @order_item.save
  end

  def show
  end

  def index
  end

  def booking_params
    params.require(:order_item).permit(:booking_description, :google_forms_link, :caldotcom_link,
                                       :user_id, :service_offer_id)
  end
end
