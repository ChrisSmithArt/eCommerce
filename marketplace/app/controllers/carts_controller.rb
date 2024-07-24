class CartsController < ApplicationController
  def index
  end

  def show
    @order_detail = OrderDetail.new
  end

  def add_to_cart
  end
end
