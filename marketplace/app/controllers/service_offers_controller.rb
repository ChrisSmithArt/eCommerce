class ServiceOffersController < ApplicationController
  def index
    @service_offers = ServiceOffer.all
  end

  def show
    @service_offer = ServiceOffer.find(params[:id])
  end
end
