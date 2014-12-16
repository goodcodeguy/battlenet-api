module Battlenet
  module WOW
    class Quest < Battlenet::APIResponse

      def initialize(options={})
        @realm          = options.delete(:quest)

        @endpoint       = "/quest/#{@quest}"

        super(options)
      end

      def details
        get_data(@endpoint, {})
      end

    end
  end
end
