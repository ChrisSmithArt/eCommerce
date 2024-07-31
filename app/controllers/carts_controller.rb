class CartsController < ApplicationController
  def index; end

  def show
    @order_detail = OrderDetail.new
    @service_types = ServiceType.all
  end
end
