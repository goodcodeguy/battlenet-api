module Battlenet
  module WOW
    class Challenge < Battlenet::APIResponse

      def initialize(options={})
        @endpoint       = "/challenge"
        super(options)
      end

      def realm_leaderboard(realm, options = {})
        get_data("#{@endpoint}/#{realm}", options)
      end

      def region_leaderboard(options = {})
        get_data("#{@endpoint}/region", options)
      end

    end
  end
end
