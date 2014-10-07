require 'uri'

module Battlenet
	module Modules
		module SC2
			module Data
				def achievements(options = {})
					get "/data/achievements", options
				end

				def rewards(options = {})
					get "/data/rewards", options
				end
			end
		end
	end
end