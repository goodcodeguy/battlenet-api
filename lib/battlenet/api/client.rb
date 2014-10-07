require 'battlenet/api/version'
require 'httparty'

module Battlenet

		class Client
			include HTTParty

			def initialize(api_key = nil, game = :wow, region = :us)
	  		
	  		@api_key = api_key

	  		domain   = region_uri(region)
	  		endpoint = endpoint(game)

	  		self.class.base_uri "https://#{domain}#{endpoint}"

	  	end

	  	def region_uri(region = :us)
	  		domain = case region
	  		when :us
	  			'us.api.battle.net'
	  		when :eu
	  			'eu.api.battle.net'
	  		when :kr
	  			'kr.api.battle.net'
	  		when :tw
	  			'tw.api.battle.net'
	  		else
	  			raise "Invalid region: #{region.to_s}"
	  		end
	  	end

	  	def endpoint(game = :wow)
	  		endpoint = case game
	  		when :wow
	  			'/wow'
	  		when :sc2
	  			'/sc2'
	  		when :d3
	  			'/d3'
	  		else
	  			raise "Invalid game: #{game.to_s}"
	  		end
	  	end

	  	def get(path, params = {})
	  		make_request :get, path, params
	  	end

	  	def make_request(verb, path, params = {})
	  		options = {}
	  		headers = {}

	  		options[:headers] = headers unless headers.empty?
      	options[:query]   = params unless params.empty?

      	if @api_key
	        options[:query] ||= {}
	        options[:query].merge!({ :apikey => @api_key })
	      end

      	response = self.class.send(verb, path, options)
	  	end

		end

end