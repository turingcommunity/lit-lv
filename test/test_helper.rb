ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "capybara/rails"
require "minitest/autorun"
require "minitest/pride"

class IntegrationTest < MiniTest::Unit::TestCase
  include Rails.application.routes.url_helpers
  include Capybara::DSL
end
