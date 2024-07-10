# frozen_string_literal: true

# Controller for the Service Offer model
class ServiceOffersController < ApplicationController
  def index
    @service_offers = ServiceOffer.order(:service_type_id).page(params[:page]).per(6)
    @service_types = ServiceType.all
  end

  def show
    @service_offer = ServiceOffer.find(params[:id])
  end
end
