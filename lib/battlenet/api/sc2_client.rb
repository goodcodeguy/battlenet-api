require 'battlenet/api/client'

require 'battlenet/modules/sc2/profile'
require 'battlenet/modules/sc2/ladder'
require 'battlenet/modules/sc2/data'

module Battlenet

  class SC2Client < Client

    include Battlenet::SC2

    def initialize(api_key = nil, region = :us)
      super(api_key, region)
    end

    def endpoint
      @endpoint = '/sc2'
    end

  end
  
end
