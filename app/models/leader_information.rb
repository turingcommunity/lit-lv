class LeaderInformation
  attr_reader :announcement, :event
  def initialize(event, announcement)
    @event = event
    @announcement = announcement
  end
end
