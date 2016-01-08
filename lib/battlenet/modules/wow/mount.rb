module Battlenet
  module WOW
    class Mount < Battlenet::APIResponse

      def initialize(options={})
        @endpoint       = "/mount"
        super(options)
      end

      def details(options = {})
        get_data(@endpoint, options)
      end

    end
  end
end
