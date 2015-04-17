require 'test_helper'

class AdminDashboardTest < ActionController::TestCase
  include Capybara::DSL

  test "unauthenticated user can view admin dashboard" do
    visit '/admin'

    assert page.has_content?("calendar")
    assert page.has_content?("events")
    assert page.has_content?("announcements")
  end

  test "on the dashboard, unauthenticated user sees a list of events" do
    visit '/admin'

    assert page.has_content?("Visit the Whitehouse.")
    assert page.has_content?("Go to Georgetown.")
    assert page.has_content?("Lunch at Casa Bonita.")
  end

  test "on the dashboard, unauthenticated user sees a list of announcements" do
    visit '/admin'

    assert page.has_content?("Little Jimmy is out of the Hospital")
    assert page.has_content?("Turing expresses interest in outreach program")
    assert page.has_content?("Careful of snowy roads")
  end
end
