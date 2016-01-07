require 'uri'

module Battlenet
  module D3
    class Data < Battlenet::APIResponse
      def initialize(options={})
        super(options)
      end

      def item(item, options = {})
        get_data("/data/item/#{item}", options)
      end

      def follower(follower, options = {})
        get_data("/data/follower/#{follower}", options)
      end

      def artisan(artisan, options = {})
        get_data("/data/artiasn/#{artisan}", options)
      end
    end
  end
end
