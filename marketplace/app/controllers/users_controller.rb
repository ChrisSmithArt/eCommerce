# frozen_string_literal: true

# controller for the User model
class UsersController < ApplicationController
  def index
    @users = User.order(:user_name).page(params[:page]).per(6)
    @service_types = ServiceType.all
  end

  def show
    @user = User.find(params[:id])
  end
end
