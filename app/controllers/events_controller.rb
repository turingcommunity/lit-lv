class EventsController < StudentsBaseController
  def show
    @event = Event.find(params[:id])
  end

end