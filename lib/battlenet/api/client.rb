require 'battlenet/api/version'
require 'httparty'

module Battlenet

    class Client
      include HTTParty

      attr_accessor *Configuration::OPTIONS_KEYS

      def initialize(options={})
        
        options = Battlenet.options.merge(options)

        Configuration::OPTIONS_KEYS.each do |key|
          send("#{key}=", options[key])
        end

        self.class.base_uri "https://#{domain}#{endpoint}"

      end

      def domain
        domain = case @region
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

      def endpoint
          raise "Invalid Game Endpoint" if @endpoint == nil
          @endpoint
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