require 'battlenet/api/client'

require 'battlenet/modules/d3/profile'
require 'battlenet/modules/d3/data'

module Battlenet

  class D3Client < Client

    include Battlenet::D3

    def initialize(options = {})
      client_settings = { :endpoint => '/d3' }
      client_settings = client_settings.merge(options)

      super(client_settings)
    end

    def profile(options = {})
      merge_options_and_return_obj(options, Battlenet::D3::Profile)
    end

    def data(options = {})
      merge_options_and_return_obj(options, Battlenet::D3::Data)
    end

  end

end
