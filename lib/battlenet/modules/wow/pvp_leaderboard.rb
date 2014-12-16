module Battlenet
  module WOW
    class PVPLeaderboard < Battlenet::APIResponse

      def initialize(options={})
        @realm          = options.delete(:bracket)

        @endpoint       = "/leaderboard/#{@bracket}"

        super(options)
      end

      def details
        get_data(@endpoint, {})
      end

    end
  end
end
