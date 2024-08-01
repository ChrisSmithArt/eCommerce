# frozen_string_literal: true

# controller for the User model
class UsersController < ApplicationController
  before_action :set_breadcrumbs

  def index
    # @users = User.order(:user_name).page(params[:page]).per(6)

    @q = User.joins(:service_offers).group("user_id").having("count(user_id) > 0")
             .order(:user_name).ransack(params[:q])

    @users = @q.result.page(params[:page]).per(3)

    @service_types = ServiceType.all
    add_breadcrumb("Users", users_path)
  end

  def show
    @user = User.find(params[:id])
    @service_types = ServiceType.all
    add_breadcrumb(@user.user_name, @user)
  end

  def set_breadcrumbs
    add_breadcrumb("Home", root_path)
  end
end
