class ServiceOffersController < ApplicationController
  def index
    @service_offers = ServiceOffer.order(:service_type_id).page(params[:page]).per(3)
  end

  def show
    @service_offer = ServiceOffer.find(params[:id])
  end
end
