class Admin::AnnouncementsController < ApplicationController
  def index
    @announcements = Announcement.all
  end

  def new
  end

  def create
    announcement = Announcement.new(announcement_params)
    if announcement.save
      flash[:notice] = 'Your announcement was successfully created'
      redirect_to admin_announcements_path
    else
      flash[:error] = announcement.errors.full_messages
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def announcement_params
    params.require(:announcement).permit(:title, :body, :expiration_date, :created_by)
  end
end
