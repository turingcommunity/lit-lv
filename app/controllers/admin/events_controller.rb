class Admin::EventsController < ApplicationController
  
  def new
  end

  def index
    @events = Event.all
  end

  def show
  end

  def create
    event = Event.new(event_params)
    if event.save
      flash[:notice] = 'Your event was successfully created'
      redirect_to admin_events_path
    else
      flash[:error] = event.errors.full_messages
      render :new
    end
  end

  private
  def event_params
    params.require(:event).permit(:start_date, :start_time, :end_date, :end_time, 
                    :name, :description, :location)
  end
end