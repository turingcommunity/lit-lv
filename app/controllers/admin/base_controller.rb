class Admin::BaseController < ApplicationController
  # before_action :require_admin

  def dashboard
  end

  private

  # def require_admin
  #   redirect_to root_path unless current_user && current_user.admin?
  # end
end
