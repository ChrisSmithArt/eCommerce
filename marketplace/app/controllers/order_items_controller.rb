class OrderItemsController < ApplicationController
  def create
    @cart = current_user.cart
    @order_item = OrderItem.create!(order_item_params)
    @order_item.cart.save
    # redirect_back_or_to root_path
  end

  def order_item_params
    params.require(:order_item).permit(:price_before_tax, :user_id, :service_offer_id,
                                       :order_details_id, :booking_id, :order_item_status_id)
  end
end
