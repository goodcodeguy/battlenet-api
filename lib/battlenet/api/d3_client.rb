require 'battlenet/api/client'

require 'battlenet/modules/d3/profile'
require 'battlenet/modules/d3/data'

module Battlenet

  class D3Client < Client

    include Battlenet::D3

    def initialize(api_key = nil, region = :us)
      super(api_key, :d3, region)
    end

  end

end
