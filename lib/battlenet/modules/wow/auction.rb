module Battlenet
  module WOW
    class Auction < Battlenet::APIResponse

      def initialize(options={})
        @realm          = options.delete(:realm)
        @endpoint       = "/auction/data/#{@realm}"

        super(options)
      end

      def details
        get_data(@endpoint, {})
      end

    end
  end
end
