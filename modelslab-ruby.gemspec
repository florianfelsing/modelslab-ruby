# frozen_string_literal: true

require_relative "lib/modelslab/version"

Gem::Specification.new do |spec|
  spec.name = "modelslab-ruby"
  spec.version = ModelsLab::VERSION
  spec.authors = ["Florian Felsing"]
  spec.email = ["florian.felsing@googlemail.com"]

  spec.summary = "Ruby client for ModelsLab API"
  spec.description = "A Ruby wrapper for the ModelsLab API, focusing on text-to-image generation."
  spec.homepage = "https://github.com/florianfelsing/modelslab-ruby"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  spec.files = [
    "lib/modelslab.rb",
    "lib/modelslab/version.rb",
    "lib/modelslab/client.rb",
    "lib/modelslab/http.rb",
    "lib/modelslab/images.rb",
    "lib/modelslab/enterprise.rb"
  ]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Add dependencies
  spec.add_dependency "faraday", "~> 2.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
