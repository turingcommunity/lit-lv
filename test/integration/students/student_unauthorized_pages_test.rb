require "test_helper"

class StudentUnauthorizedPagesTest < ActionDispatch::IntegrationTest
  def login_student
    FactoryGirl.create(:user, :default)
    visit '/'
    fill_in "session[username]", with: "richard"
    fill_in "session[password]", with: "password"
    click_button "Log In"
  end

  test 'cannot access admin dashboard' do 
    login_student
    visit admin_dashboard_path
    assert page.has_content?("Welcome Richard")
    assert page.has_content?("The page you were looking for doesn't exist.")
  end  

  test 'cannot access new announcement form' do 
    login_student
    visit new_admin_announcement_path
    assert page.has_content?("Welcome Richard")
    assert page.has_content?("The page you were looking for doesn't exist.")
  end
end
