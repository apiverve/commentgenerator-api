# Comment Generator API - Ruby Gem

Comment Generator produces social media comments formatted for text or image posts across positive, negative, and neutral tones. Each request returns generated comment text with optional emoji support, while paid plans can request batches up to 10.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_commentgenerator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_commentgenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_commentgenerator'

# Initialize the client
client = APIVerve::Commentgenerator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  mode: "text",
  tone: "positive",
  count: 1,
  emojis: true
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ mode: "text", tone: "positive", count: 1, emojis: true })
  puts response["data"]
rescue APIVerve::Commentgenerator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Commentgenerator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Commentgenerator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "count": 5,
    "mode": "text",
    "tone": "positive",
    "comments": [
      "You're so right! is a game-changer Wow! 😍",
      "Inspiring stuff gives me all the feels Wow! ✨",
      "Thanks for sharing this gives me all the feels Perfect! 💯",
      "Exactly my thoughts is on fire Wow beyond! 🌟",
      "Great outlook in everything here, very bright! slays! For sure! 😊"
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/commentgenerator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/commentgenerator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/commentgenerator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
