class CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.all
  end

  def create
    @service_offer = ServiceOffer.find(params[:cart_item][:id])
    @cart = current_user.cart
    @cart_item = CartItem.create!(cart_item_params)
    redirect_to service_offer_path(@service_offer)
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:quantity, :cart_id, :service_offer_id)
  end
end
