require 'battlenet/api/client'

require 'battlenet/modules/d3/profile'
require 'battlenet/modules/d3/data'

module Battlenet

  class D3Client < Client

    include Battlenet::D3

    def client_defaults
      { :endpoint => '/d3', :region => :us }
    end

  end

end
