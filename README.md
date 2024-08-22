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
  parameters: {
    prompt: "A beautiful sunset over the ocean",
    model_id: "some_model_id",
    width: 576,
    height: 576,
    samples: 1,
    num_inference_steps: 31,
    safety_checker: "no",
    enhance_prompt: "yes",
    seed: nil,
    guidance_scale: 7.5,
    scheduler: "UniPCMultistepScheduler",
    tomesd: "yes",
    use_karras_sigmas: "yes",
    multi_lingual: "no",
    panorama: "no",
    self_attention: "no",
    vae: nil
  }
)

puts response
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/modelslab-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/modelslab-ruby/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Modelslab::Ruby project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/modelslab-ruby/blob/main/CODE_OF_CONDUCT.md).
