require 'battlenet/api/client'

require 'battlenet/modules/sc2/profile'
require 'battlenet/modules/sc2/ladder'
require 'battlenet/modules/sc2/data'

module Battlenet

  class SC2Client < Client

    include Battlenet::SC2

    def initialize(options = {})
      client_settings = { :endpoint => '/sc2' }
      client_settings = client_settings.merge(options)

      super(client_settings)
    end

  end

end
