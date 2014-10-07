require 'uri'

module Battlenet
  module Modules
    module WOW
      module Auction
        def auction_data_status(realm, options = {})
          realm = URI.escape realm

          get "/auction/data/#{realm}", options
        end
      end
    end
  end
end