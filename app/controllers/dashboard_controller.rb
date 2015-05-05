class DashboardController < StudentsBaseController
  def index
    @events = Event.all
  end

end
