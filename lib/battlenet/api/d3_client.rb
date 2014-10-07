require 'battlenet/api/client'

require 'battlenet/modules/d3/profile'
require 'battlenet/modules/d3/data'

module Battlenet

  class D3Client < Client

    include Battlenet::D3

    def initialize(api_key = nil, region = :us)
      super(api_key, region)
    end

    def endpoint
      @endpoint = '/d3'
    end

  end

end
