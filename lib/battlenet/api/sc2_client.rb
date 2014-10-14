require 'battlenet/api/client'

require 'battlenet/modules/sc2/profile'
require 'battlenet/modules/sc2/ladder'
require 'battlenet/modules/sc2/data'

module Battlenet

  class SC2Client < Client

    include Battlenet::SC2

    def initialize(options = {})
      options = client_defaults.merge(options)
      super(options)
    end

    def client_defaults
      { :endpoint => '/sc2', :region => :us }
    end

  end
  
end
