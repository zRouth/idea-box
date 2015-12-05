ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

class ActionController::TestCase
  def json_response
    JSON.parse response.body
  end
end

class ActionDispatch::IntegrationTest
  include Capybara::DSL
  include Rails.application.routes.url_helpers
end

