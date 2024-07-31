# frozen_string_literal: true

# controller for pages that do not reference a specific model
class PagesController < ApplicationController
  def index
    @service_types = ServiceType.all
  end

  def about
    @service_types = ServiceType.all
  end
end
