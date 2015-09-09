class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(params[:id])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/purchases'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/home'
  end
end
