require 'uri'

module Battlenet
  module WOW
    def pvp_leaderboards(bracket, options = {})
      bracket = URI.escape bracket

      get "/leaderboard/#{bracket}", options
    end
  end
end