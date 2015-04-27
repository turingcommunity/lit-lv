require "test_helper"

class User::NewEventsTest < ActionDispatch::IntegrationTest
  test 'a student can see a single event that is displayed' do 
    FactoryGirl.create(:user, :default)
    event = Event.create(start_date: "12-04-14", start_time: "1:00 PM", end_date: "12-05-14", end_time: "5:00 PM", name: "Museum Outing", description: "Museum of Nature and Science", location: "LV Museum")
    visit "/"
    fill_in "session[username]", with: "richard@turing.io"
    fill_in "session[password]", with: "password"
    click_button "Log In"
    visit event_path(event)
    assert page.has_content?("Museum Outing") 
    assert page.has_content?("Museum of Nature and Science")
    assert page.has_content?("LV Museum")   
  end
end