require File.expand_path('../client', __FILE__)

Dir[File.expand_path('../../modules/d3/*.rb', __FILE__)].each{|f| require f}

module Battlenet

  class D3Client < Client

    include Battlenet::D3

    def client_defaults
      { :endpoint => '/d3', :region => :us }
    end

  end

end
