require 'test_helper'

class UserDashboardTest < ActionDispatch::IntegrationTest
  def test_user_sees_header_for_annoucements
    visit dashboard_index_path
    within('.announcements') do
     assert page.has_content?('Announcements')
    end
  end

  def test_user_sees_current_month_on_calendar
    visit dashboard_index_path
    within('.calendar') do
      assert page.has_content?('April')
    end
  end

end
