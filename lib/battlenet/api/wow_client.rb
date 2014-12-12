require 'battlenet/api/client'

require 'battlenet/modules/wow/character_profile'

#Dir[File.expand_path('../modules/wow/*.rb', __FILE__)].each{|f| require f}

module Battlenet

  class WOWClient < Client

    def initialize(options = {})
      client_settings = { :endpoint => '/wow' }
      client_settings = client_settings.merge(options)

      super(client_settings)
    end

    def character_profile(options = {})
      opts = options.merge({:client => self})
      Battlenet::WOW::CharacterProfile.new(opts)
    end

  end

end
