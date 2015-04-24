require 'test_helper'
class Admin::NewEventsTest <ActionDispatch::IntegrationTest
  test 'an admin user can create an event for the calendar' do
    user = create(:user, role:1)

    
  end

end