require 'test_helper'

class User::NewEventsTest < ActionDispatch::IntegrationTest

  test 'a student can see a single event that is displayed' do 
    user = FactoryGirl.create(:user, :default)
    event = Event.create(start_date: "12-04-14",
                         start_time: "1:00 PM",
                          end_date: "12-05-14",
                          end_time: "5:00 PM",
                          name: "Museum Outing",
                          description: "Museum of Nature and Science",
                          location: "LV Museum"
                            )
    visit login_path
    fill_in "user[email_address]", with: "richard@turing.io"
    fill_in "user[password]", with: "password"
    visit event_path(event)
    assert page.has_content?("Museum of Nature and Science")    
  end
end