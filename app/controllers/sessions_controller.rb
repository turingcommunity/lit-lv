class SessionsController < ApplicationController

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      session[:username] = user.username
      flash[:success] = 'You have successfully logged in'
      redirect_to dashboard_index_path
    else
      flash[:errors] = 'Invalid login'
      redirect_to :back
    end
  end

  def destroy
    flash[:success] = 'Successful logout'
    session.clear
    redirect_to root_path
  end
end
