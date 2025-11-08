# frozen_string_literal: true

require "action_view"
require "action_controller"
require "rails"
require "view_component"
require "view_component/test_helpers"
require "capybara/rspec"

# Minimal Rails app for ViewComponent testing
module Masterbuilder
  class Application < Rails::Application
    config.root = __dir__
    config.eager_load = false
    config.logger = Logger.new(nil)
    config.secret_key_base = "test"
  end
end

Rails.application.initialize! unless Rails.application.initialized?

# Define ApplicationController for ViewComponent testing
class ApplicationController < ActionController::Base; end

require "masterbuilder"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
