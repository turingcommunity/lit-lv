class Admin::EventsController < ApplicationController
  
  def new
    
  end

  def index
    
  end

  def show
  end


  def create
    # announcement = Announcement.new(announcement_params)
    # if announcement.save
    #   flash[:notice] = 'Your announcement was successfully created'
    #   redirect_to admin_announcements_path
    # else
    #   flash[:error] = announcement.errors.full_messages
    #   render :new
    # end
    redirect_to admin_events_path
  end
end