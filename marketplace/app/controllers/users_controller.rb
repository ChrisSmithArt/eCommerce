# frozen_string_literal: true

# controller for the User model
class UsersController < ApplicationController
  def index
    @users = User.order(:user_name).page(params[:page]).per(6)
    breadcrumbs.add "Providers", users_path
    @service_types = ServiceType.all
  end

  def show
    @user = User.find(params[:id])
    breadcrumbs.add "Providers", users_path
    breadcrumbs.add "#{@user.user_name}'s Store", user_path
  end
end
