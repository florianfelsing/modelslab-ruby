# frozen_string_literal: true

require "faraday"
require "faraday/multipart"

require_relative "modelslab/version"
require_relative "modelslab/http"
require_relative "modelslab/client"
require_relative "modelslab/images"

module ModelsLab
  class Error < StandardError; end
  class ConfigurationError < Error; end

  class MiddlewareErrors < Faraday::Middleware
    def call(env)
      @app.call(env)
    rescue Faraday::Error => e
      raise e unless e.response.is_a?(Hash)

      logger = Logger.new($stdout)
      logger.formatter = proc do |_severity, _datetime, _progname, msg|
        "\033[31mModelsLab HTTP Error (spotted in modelslab-ruby #{VERSION}): #{msg}\n\033[0m"
      end
      logger.error(e.response[:body])

      raise e
    end
  end

  class Configuration
    attr_accessor :api_key, :uri_base, :request_timeout, :extra_headers

    DEFAULT_URI_BASE = "https://modelslab.com/api/v6"
    DEFAULT_REQUEST_TIMEOUT = 120

    def initialize
      @api_key = nil
      @uri_base = DEFAULT_URI_BASE
      @request_timeout = DEFAULT_REQUEST_TIMEOUT
      @extra_headers = {}
    end
  end

  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= ModelsLab::Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
