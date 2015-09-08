class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def new; end

  def edit; end

  def show; end

  def create
    user = User.new(user_params)

    if user.save
      session[:user_id] = user.id
      # flash[:notice] = "You are registered"
      redirect_to '/'
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
