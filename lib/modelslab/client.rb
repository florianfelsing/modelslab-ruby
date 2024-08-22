module ModelsLab
  class Client
    include ModelsLab::HTTP

    CONFIG_KEYS = %i[api_key uri_base request_timeout extra_headers].freeze
    attr_reader *CONFIG_KEYS, :faraday_middleware

    def initialize(config = {}, &faraday_middleware)
      CONFIG_KEYS.each do |key|
        instance_variable_set(
          "@#{key}",
          config[key].nil? ? ModelsLab.configuration.send(key) : config[key]
        )
      end
      @faraday_middleware = faraday_middleware
    end

    def images
      @images ||= ModelsLab::Images.new(client: self)
    end
  end
end
