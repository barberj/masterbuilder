# frozen_string_literal: true

require_relative "lib/masterbuilder/version"

Gem::Specification.new do |spec|
  spec.name = "masterbuilder"
  spec.version = Masterbuilder::VERSION
  spec.authors = ["Justin Barber"]
  spec.email = ["barber.justin@gmail.com"]

  spec.summary = "A Ruby gem for building things masterfully"
  spec.description = "Masterbuilder provides tools and utilities for constructing robust Ruby applications"
  spec.homepage = "https://github.com/barberj/masterbuilder"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.4.3"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/justinbarber/masterbuilder"
  spec.metadata["changelog_uri"] = "https://github.com/justinbarber/masterbuilder/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.glob(%w[LICENSE.txt README.md lib/**/*.rb sig/**/*.rbs]).select { |f| File.file?(f) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Runtime dependencies
  spec.add_dependency "view_component", "~> 3.0"
  spec.add_dependency "tailwindcss-rails", "~> 3.0"

  # Development dependencies
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "standard", "~> 1.0"
  spec.add_development_dependency "capybara", "~> 3.0"
end
