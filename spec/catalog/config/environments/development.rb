# frozen_string_literal: true

require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In development, don't eager load code on boot
  config.eager_load = false

  # Show full error reports
  config.consider_all_requests_local = true

  # Enable server timing
  config.server_timing = true

  # Enable/disable caching
  config.action_controller.perform_caching = false
  config.cache_store = :null_store

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Raise exceptions for disallowed deprecations
  config.active_support.disallowed_deprecation = :raise

  # Tell Active Support which deprecation messages to disallow
  config.active_support.disallowed_deprecation_warnings = []

  # Raises error for missing translations
  # config.i18n.raise_on_missing_translations = true

  # Annotate rendered view with file names
  config.action_view.annotate_rendered_view_with_filenames = true
end
