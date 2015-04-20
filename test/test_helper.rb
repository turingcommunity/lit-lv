ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "capybara/rails"
require "minitest/pride"
require "minitest/autorun"
require "factory_girl_rails"
require "database_cleaner"
require "date"
require 'simplecov'
SimpleCov.start

class ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods

  DatabaseCleaner.strategy = :transaction

  def setup
    DatabaseCleaner.start
    FactoryGirl.reload
  end

  def teardown
    DatabaseCleaner.clean
  end
end

class ActionDispatch::IntegrationTest
  include FactoryGirl::Syntax::Methods
  include Rails.application.routes.url_helpers
  include Capybara::DSL

  def setup
    DatabaseCleaner.start
    FactoryGirl.reload
  end

  def teardown
    reset_session!
    DatabaseCleaner.clean
  end
end
