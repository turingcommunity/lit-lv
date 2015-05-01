class SessionsController < ApplicationController

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.admin? && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = 'You have successfully logged in.'
      redirect_to admin_dashboard_path
    elsif user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = 'You have successfully logged in.'
      redirect_to dashboard_index_path
    else
      flash[:errors] = 'Invalid login. Please try again.'
      redirect_to :back
    end
  end

  def destroy
    flash[:success] = 'Successful logout'
    session.clear
    redirect_to root_path
  end
end
