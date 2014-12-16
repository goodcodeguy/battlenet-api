module Battlenet
  module WOW
    class Achievement < Battlenet::APIResponse

      def initialize(options={})
        @realm          = options.delete(:achievement)

        @endpoint       = "/achievement/#{@achievement}"

        super(options)
      end

      def details
        get_data(@endpoint, {})
      end

    end
  end
end
