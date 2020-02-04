# frozen_string_literal: true

ENV["RAILS_ENV"] = "test"

require_relative "support/simplecov"
require_relative "../config/environment"
require "rails/test_help"
require "minitest/rails"
require "faker"
require "vcr"

# To add Capybara feature tests add `gem "minitest-rails-capybara"`
# to the test group in the Gemfile and uncomment the following:
# require "minitest/rails/capybara"

# Uncomment for awesome colorful output
# require "minitest/pride"

VCR.configure do |config|
  config.cassette_library_dir = "test/vcr_cassettes"
  config.hook_into :webmock
end

class ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods

  fixtures :all
end

class ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
end
