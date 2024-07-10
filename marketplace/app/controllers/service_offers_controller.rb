# frozen_string_literal: true

# Controller for the Service Offer model
class ServiceOffersController < ApplicationController
  before_action :set_breadcrumbs

  def index
    # @service_offers = ServiceOffer.order(:service_type_id).page(params[:page]).per(4)

    @q = ServiceOffer.ransack(params[:q])
    @service_offers = @q.result(distinct: true).page(params[:page]).per(4)

    @service_types = ServiceType.all
    add_breadcrumb("Service Offers", service_offers_path)
  end

  def show
    @service_offer = ServiceOffer.find(params[:id])
    @service_types = ServiceType.all
    add_breadcrumb(@service_offer.user.user_name, @service_offer.user)
    add_breadcrumb(@service_offer.service_type.service_type_name, @service_offer.service_type)
    add_breadcrumb(@service_offer.service_offer_name, @service_offer)
  end

  def set_breadcrumbs
    add_breadcrumb("Home", root_path)
  end
end
