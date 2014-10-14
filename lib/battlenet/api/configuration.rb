module Battlenet
  module Configuration

    OPTIONS_KEYS = [
      :api_key,
      :region,
      :endpoint
    ].freeze

    DEFAULT_API_KEY  = nil
    DEFAULT_ENDPOINT = nil
    DEFAULT_REGION   = :us

    attr_accessor *OPTIONS_KEYS

    def configure
      yield self
    end

    def options
      OPTIONS_KEYS.inject({}) do |option, key|
        option.merge!(key => send(key))
      end
    end

  end
end