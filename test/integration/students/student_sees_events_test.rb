require "test_helper"

class StudentSeesEventsTest < ActionDispatch::IntegrationTest

  def create_events
    3.times do |x|
      date = Time.now
      Event.create(name: "Event#{x}",
       description: "Here is a description for event#{x}",
       location: Faker::Address.street_address,
       starts_at: date,
       ends_at: date) 
    end
  end

  def login_student
    FactoryGirl.create(:user, :default)
    visit '/'
    fill_in "session[username]", with: "richard"
    fill_in "session[password]", with: "password"
    click_button "Log In"
  end

  test 'events on dashboard calendar' do
    create_events
    login_student
    within("tr:nth-child(2)") do
      assert page.has_content?("Event0")
      assert page.has_content?("Event1")
      assert page.has_content?("Event2")
    end
  end

  test 'single event show' do
    create_events
    login_student
    click_link("Event1")
    assert page.has_content?("Here is a description for event1")
  end
end