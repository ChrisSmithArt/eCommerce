# frozen_string_literal: true

# Controller for the Service Offer model
class ServiceOffersController < ApplicationController
  def index
    @service_offers = ServiceOffer.order(:service_type_id).page(params[:page]).per(6)
    breadcrumbs.add "Service Offers", service_offers_path
    @service_types = ServiceType.all
  end

  def show
    @service_offer = ServiceOffer.find(params[:id])
    breadcrumbs.add "Service Offers", service_offers_path
    breadcrumbs.add @service_offer.service_type.service_type_name, service_type_path
    breadcrumbs.add @service_offer.user.user_name, user_path
    breadcrumbs.add "#{@service_offer.user.user_name}'s #{@service_offer.service_offer_name}",
                    service_offer_path
  end
end
