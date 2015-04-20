require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'it creates a user with the right info' do
    assert_difference 'User.count', +1 do
      User.create(username: 'richard', first_name: 'richard', email: 'richard@turing.io', phone: '333-333-3333', role: 'user', password: 'password')
    end
  end

  test 'it does not creates a user with the missing username' do
    assert_no_difference 'User.count' do
      User.create(first_name: 'richard', email: 'richard@turing.io', phone: '333-333-3333', role: 'user', password: 'password')
    end
  end

  test 'it does not creates a user with the missing first_name' do
    assert_no_difference 'User.count' do
      User.create(username: 'richard', email: 'richard@turing.io', phone: '333-333-3333', role: 'user', password: 'password')
    end
  end

  test 'it does not creates a user with the missing email' do
    assert_no_difference 'User.count' do
      User.create(username: 'richard', first_name: 'richard', phone: '333-333-3333', role: 'user', password: 'password')
    end
  end

  test 'it does not creates a user with the missing phone' do
    assert_no_difference 'User.count' do
      User.create(username: 'richard', first_name: 'richard', email: 'richard@turing.io', role: 'user', password: 'password')
    end
  end

end
