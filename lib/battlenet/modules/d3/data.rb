require 'uri'

module Battlenet
  module D3
    def data_item(data, options = {})
      get "/data/item/#{data}", options
    end

    def data_follower(follower, options = {})
      get "/data/follower/#{follower}", options
    end

    def data_artisan(artisan, options = {})
      get "/data/artisan/#{artisan}", options
    end
  end
end
