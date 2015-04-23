require 'test_helper'

class Admin::BaseControllerTest < ActionController::TestCase
  test 'should get dashboard' do
    get :dashboard
    assert_response :success
  end

end
