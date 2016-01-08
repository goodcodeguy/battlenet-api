module Battlenet
  module WOW
    class PVPLeaderboard < Battlenet::APIResponse

      def initialize(options={})
        @realm          = options.delete(:bracket)

        @endpoint       = "/leaderboard/#{@bracket}"

        super(options)
      end

      def details(options = {})
        get_data(@endpoint, options)
      end

    end
  end
end
