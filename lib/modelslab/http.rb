# frozen_string_literal: true

module ModelsLab
  module HTTP
    def json_post(path:, parameters:)
      response = connection.post(path) do |req|
        req.headers["Content-Type"] = "application/json"
        req.body = parameters.to_json
      end
      JSON.parse(response.body)
    rescue JSON::ParserError
      response.body
    end

    def connection
      @connection ||= Faraday.new(url: uri_base) do |f|
        f.request :json
        f.response :raise_error
        f.use ModelsLab::MiddlewareErrors
        f.options.timeout = request_timeout
        extra_headers.each do |key, value|
          f.headers[key] = value
        end
        faraday_middleware&.call(f)
        f.adapter Faraday.default_adapter
      end
    end
  end
end
