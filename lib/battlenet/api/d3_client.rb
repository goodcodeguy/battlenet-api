require 'battlenet/api/client'

require 'battlenet/modules/d3/profile'
require 'battlenet/modules/d3/data'

module Battlenet

  class D3Client < Client

    include Battlenet::D3

    def initialize(options = {})
      options = client_defaults.merge(options)
      super(options)
    end

    def client_defaults
      { :endpoint => '/d3', :region => :us }
    end

  end

end
