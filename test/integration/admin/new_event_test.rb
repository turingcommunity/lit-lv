require 'test_helper'
class Admin::NewEventsTest <ActionDispatch::IntegrationTest

  test 'an admin user can create an event for the calendar' do
    user = create(:user, role:1)
    event = create(:event)

    visit new_admin_event_path
    fill_in 'event[name]', with: event.name
    fill_in 'event[description]', with: event.description
    fill_in 'event[location]', with: event.location
    fill_in 'event[start_date]', with: event.start_date
    page.execute_script("$('#datepicker').datepicker('setDate, 08/06/2015')")
    # fill_in 'event[start_time]', with: event.start_time
    fill_in 'event[end_date]', with: event.end_date
    fill_in 'event[end_time]', with: event.end_time
    click_button 'Submit'

    assert_equal admin_event_path, current_path
    assert page.has_content?("08/06/2015")
    assert page.has_content?("8:00am")
    assert page.has_content?("08/07/2015")
    assert page.has_content?("10:30am")
    assert page.has_content?("College Visit")
    assert page.has_content?("Students will travel to UNLV for tour.")
    assert page.has_content?("UNLV")
  end

end