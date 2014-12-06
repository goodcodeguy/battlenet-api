require File.expand_path('../client', __FILE__)

Dir[File.expand_path('../../modules/d3/*.rb', __FILE__)].each{|f| require f}

module Battlenet

  class D3Client < Client

    include Battlenet::D3

    def initialize(options = {})
      client_settings = { :endpoint => '/d3' }
      client_settings = client_settings.merge(options)

      super(client_settings)
    end

  end

end
