class CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.all
  end

  def create
    @service_offer = ServiceOffer.find(params[:cart_item][:id])
    @cart = current_user.cart
    @cart_item = CartItem.create!(cart_item_params)
    redirect_back_or_to root_path
  end

  def add
    @cart_item = CartItem.find(params[:id])
    @cart_item.add_one_item
    redirect_back_or_to root_path
  end

  def remove
    @cart_item = CartItem.find(params[:id])
    @cart_item.remove_one_item
    redirect_back_or_to root_path
  end

  def delete
    @cart_item = CartItem.find(params[:id])
    @cart_item.delete_item
    redirect_back_or_to root_path
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:quantity, :cart_id, :service_offer_id)
  end
end
