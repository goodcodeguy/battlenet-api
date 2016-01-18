module Battlenet
  module WOW
    class Quest < Battlenet::APIResponse

      def initialize(options={})
        @quest          = options.delete(:quest)
        @endpoint       = "/quest/#{@quest}"

        super(options)
      end

      def details(options = {})
        get_data(@endpoint, options)
      end

    end
  end
end
