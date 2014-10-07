require 'uri'

module Battlenet
  module WOW
    def auction_data_status(realm, options = {})
      realm = URI.escape realm

      get "/auction/data/#{realm}", options
    end
  end
end