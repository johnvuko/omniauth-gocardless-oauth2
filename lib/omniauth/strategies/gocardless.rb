require 'omniauth-oauth2'

module OmniAuth
	module Strategies
		class Gocardless < OmniAuth::Strategies::OAuth2
		
			option :name, "gocardless"

			option :client_options, { 
				:site => "https://connect.gocardless.com",
		        :authorize_url => '/oauth/authorize',
		        :token_url => '/oauth/access_token'
			}

			uid { access_token.params['organisation_id'] }

			# Required for omniauth-oauth2 >= 1.4
			# https://github.com/intridea/omniauth-oauth2/issues/81
			def callback_url
				full_host + script_name + callback_path
			end

		end
	end
end