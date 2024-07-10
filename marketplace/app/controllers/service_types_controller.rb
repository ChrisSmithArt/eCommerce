class ServiceTypesController < ApplicationController
  def index
    @service_type = ServiceType.all
  end

  def show
    @service_type = ServiceType.find(params[:id])
  end
end
