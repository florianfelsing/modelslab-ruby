# frozen_string_literal: true

module ModelsLab
  class Images
    def initialize(client:)
      @client = client
    end

    def text2img(prompt:, model_id:, options: {})
      parameters = {
        key: @client.api_key,
        prompt: prompt,
        model_id: model_id
      }.merge(options)

      @client.json_post(path: "images/text2img", parameters: parameters)
    end

    def fetch_queued_image(request_id:)
      parameters = {
        key: @client.api_key,
        request_id: request_id
      }

      @client.json_post(path: "images/fetch", parameters: parameters)
    end
  end
end
