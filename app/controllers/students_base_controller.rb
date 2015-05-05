class StudentsBaseController < ApplicationController
  before_action :require_student

  def require_student
    render file: 'public/404.html' unless current_student? 
  end
end