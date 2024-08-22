module ModelsLab
  class Images
    def initialize(client:)
      @client = client
    end

    def text2img(parameters: {})
      @client.json_post(path: "images/text2img", parameters: parameters)
    end
  end
end
