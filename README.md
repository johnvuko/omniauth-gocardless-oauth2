# OmniAuth GoCardless OAuth2

[![Gem Version](https://badge.fury.io/rb/omniauth-gocardless-oauth2.svg)](http://badge.fury.io/rb/omniauth-gocardless-oauth2)

Strategy to authenticate [GoCardless](https://www.gocardless.com) in OmniAuth.

## Installation

OmniAuth GoCardless OAuth2 is distributed as a gem, which is how it should be used in your app.

Include the gem in your Gemfile:

    gem 'omniauth-gocardless-oauth2', '~> 1.0'

Integrate this strategy to your OmniAuth middleware.

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
	if Rails.env.production?
		provider :gocardless, ENV['GOCARDLESS_KEY'], ENV['GOCARDLESS_SECRET'], scope: 'read_only', initial_view: 'login'
	else
		provider :gocardless, ENV['GOCARDLESS_KEY'], ENV['GOCARDLESS_SECRET'], scope: 'read_only', initial_view: 'login', client_options: { site: "https://connect-sandbox.gocardless.com" }
	end
end
```

## Author

- [Jonathan VUKOVICH TRIBOUHARET](https://github.com/jonathantribouharet) ([@johntribouharet](https://twitter.com/johnvuko))

## License

OmniAuth GoCardless OAuth2 is released under the MIT license. See the LICENSE file for more info.
