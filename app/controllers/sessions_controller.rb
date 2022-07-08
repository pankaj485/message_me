class SessionsController < ApplicationController
  before_action :log_in_redirect, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "Logged in successfully"
      redirect_to root_path
    else
      # rendering new form again
      flash.now[:error] = "Can't login, credentials not matching"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Logged out successfully"
    redirect_to login_path
  end

  private

  def log_in_redirect
    if logged_in?
      # example: if user is already logged in, then they are not supposed to see login path
      flash[:error] = "Your are already logged in"
      redirect_to root_path
    end
  end
end
