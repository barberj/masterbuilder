# frozen_string_literal: true

require "rails"
require "action_controller/railtie"
require "action_view/railtie"

require "view_component"
require "lookbook"

Bundler.require(*Rails.groups)
require "masterbuilder"

module Catalog
  class Application < Rails::Application
    config.load_defaults 8.0

    # Skip database and other unused frameworks
    config.api_only = false

    # Configure view component paths
    config.view_component.instrumentation_enabled = true
    config.view_component.generate.preview_path = "/"
    config.view_component.preview_paths << Rails.root.join("previews")
    config.view_component.show_previews = true

    # Configure lookbook
    config.lookbook.project_name = "Masterbuilder Components"
    config.lookbook.page_paths = [Rails.root.join("previews/docs")]

    # Disable session store (not needed for component preview)
    config.session_store :disabled

    # Configure log level for development
    config.log_level = :info
  end
end
