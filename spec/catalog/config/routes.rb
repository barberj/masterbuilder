# frozen_string_literal: true

Rails.application.routes.draw do
  # Mount Lookbook at the root
  mount Lookbook::Engine, at: "/"

  # Health check endpoint
  get "up", to: proc { [200, {}, ["OK"]] }
end
