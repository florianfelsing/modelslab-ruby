# Modelslab::Ruby

This gem provides a Ruby interface to the ModelsLab API, focusing on the text-to-image endpoint. It allows you to easily integrate ModelsLab's AI image generation capabilities into your Ruby applications.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "modelslab-ruby"
```

And then execute:

```ruby
bundle install
```

Or install it yourself as:

```ruby
gem install modelslab-ruby
```

## Usage

First, configure the gem with your API key:

```ruby
require "modelslab"

ModelsLab.configure do |config|
  config.api_key = "your-api-key"
end
```

Then, you can use the client to generate images:

```ruby
client = ModelsLab::Client.new

response = client.images.text2img(
  prompt: "A beautiful sunset over the ocean",
  model_id: "realistic-vision-v51"
)

puts response
```

You can find a list of all the models that are currently available under this URL: https://modelslab.com/models

### Additional Options

You can pass additional options to customize the image generation process. These options are passed as a hash to the `text2img` method. Here's an example with some common options:

```ruby
response = client.images.text2img(
  prompt: "A beautiful sunset over the ocean",
  model_id: "realistic-vision-v51",
  options: {
    width: 768,
    height: 768,
    samples: 1,
    num_inference_steps: 31,
    enhance_prompt: "yes",
    guidance_scale: 7.5,
    seed: 1234567890
  }
)

puts response
```

Please refer to the official API documentation for more information: https://docs.modelslab.com/image-generation/community-models/overview

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/florianfelsing/modelslab-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/florianfelsing/modelslab-ruby/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Modelslab::Ruby project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/florianfelsing/modelslab-ruby/blob/main/CODE_OF_CONDUCT.md).
