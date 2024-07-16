# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # before_action :check_cart
  helper_method :breadcrumbs

  def breadcrumbs
    @breadcrumbs ||= []
  end

  def add_breadcrumb(name, path = nil)
    breadcrumbs << Breadcrumb.new(name, path)
  end

  def check_cart
    return unless user_signed_in?
    return if current_user.cart

    Cart.create!(
      user_id: current_user.id,
      total:   0
    )
  end
end
