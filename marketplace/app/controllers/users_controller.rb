class UsersController < ApplicationController
  def index
    @users=User.order(:user_name).page(params[:page]).per(3)
  end


  def show
    @user = User.find(params[:id])
  end
end
