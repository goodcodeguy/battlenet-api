require 'uri'

module Battlenet
	module Modules
		module WOW
			module PVP
				def pvp_leaderboards(bracket, options = {})
					bracket = URI.escape bracket

	        get "/leaderboard/#{bracket}", options
				end
			end
		end
	end
end