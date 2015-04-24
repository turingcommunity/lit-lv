require 'test_helper'

class LoginTest < ActionDispatch::IntegrationTest
  test 'you can login as a registered user' do
    user = create(:user, :basic)
    visit root_path
    fill_in 'session[email_address]', with: 'richard@turing.io'
    fill_in 'session[password]', with: 'password'
    click_button 'Log In'
    assert_equal dashboard_index_path, current_path
    assert page.has_content?('You have successfully logged in')
  end

  test 'you can login as a registered admin' do
    user = create(:user, :admin)
    visit root_path
    fill_in 'session[email_address]', with: 'richard@turing.io'
    fill_in 'session[password]', with: 'password'
    click_button 'Log In'
    assert_equal dashboard_index_path, current_path
    assert page.has_content?('You have successfully logged in')
  end

  test 'you cannot login as a unregistered user' do
    user = create(:user, :basic)
    visit root_path
    fill_in 'session[email_address]', with: 'bob@turing.io'
    fill_in 'session[password]', with: 'password'
    click_button 'Log In'
    assert_equal root_path, current_path
    assert page.has_content?('Invalid login')
  end

  test 'you can logout' do
    user = create(:user, :basic)
    visit root_path
    fill_in 'session[email_address]', with: 'richard@turing.io'
    fill_in 'session[password]', with: 'password'
    click_button 'Log In'
    assert_equal dashboard_index_path, current_path
    assert page.has_content?('You have successfully logged in')
    click_link 'Logout'
    assert page.has_content?('Successful logout')
  end

end