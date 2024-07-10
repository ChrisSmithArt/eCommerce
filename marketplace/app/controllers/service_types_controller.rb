class ServiceTypesController < ApplicationController
  before_action :set_breadcrumbs

  def index
    @service_type = ServiceType.all
  end

  def show
    @service_type = ServiceType.find(params[:id])
    add_breadcrumb(@service_type.service_type_name, @service_type)
  end

  def set_breadcrumbs
    add_breadcrumb("Home", root_path)
  end
end
