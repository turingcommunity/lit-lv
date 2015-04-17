class Admin::DashboardController < ApplicationController
  def index
    @leader_information = []
    @leader_information << LeaderInformation.new("Visit the Whitehouse.", "Little Jimmy is out of the Hospital")
    @leader_information << LeaderInformation.new("Go to Georgetown.", "Turing expresses interest in outreach program")
    @leader_information << LeaderInformation.new("Lunch at Casa Bonita.", "Careful of snowy roads")
  end
end
