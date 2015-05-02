require 'test_helper'
require 'selenium-webdriver'
class Admin::NewEventsTest <ActionDispatch::IntegrationTest

  # def admin_login
    # visit('/')
    # fill_in "session[username]", with: "admin"
    # fill_in "session[password]", with: "password"
    # click_link_or_button 'Log In'
  # end

  test 'an admin can create an event for the calendar' do
    user = create(:user, role:1)
    visit new_admin_event_path
    # admin_login
    # event = create(:event)
    save_and_open_page
    # visit new_admin_event_path
    fill_in 'event[name]', with: "College Visit"
    fill_in 'event[description]', with: "Students will travel to UNLV for tour."
    fill_in 'event[location]', with: "UNLV"
    fill_in 'event[start_date]', with: "08/06/2015"
    fill_in 'event[start_time]', with: "8:00am"
    fill_in 'event[end_date]', with: "08/07/2015"
    fill_in 'event[end_time]', with: "10:30am"
    save_and_open_page
    click_link_or_button 'Submit'

    assert_equal admin_events_path, current_path
    assert page.has_content?('08/06/2015')
    assert page.has_content?('8:00am')
    assert page.has_content?("08/07/2015")
    assert page.has_content?("10:30am")
    assert page.has_content?("College Visit")
    assert page.has_content?("Students will travel to UNLV for tour.")
    assert page.has_content?("UNLV")
  end

end