require 'uri'

module Battlenet
  module Modules
    module WOW
      module ChallengeMode
        def challengemode_realm_leaderboard(realm, options = {})
          realm = URI.escape realm

          get "/challenge/realm/#{realm}", options
        end
        def challengemode_region_leaderboard(options = {})
          get "/challenge/region", options
        end
      end
    end
  end
end