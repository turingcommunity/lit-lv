require 'test_helper'

class AdminDashboardTest < ActionController::TestCase
  include Capybara::DSL

  test "unauthenticated user can view admin dashboard" do
    visit '/admin'

    assert page.has_content?("calendar")
    assert page.has_content?("events")
    assert page.has_content?("announcements")
  end
end
