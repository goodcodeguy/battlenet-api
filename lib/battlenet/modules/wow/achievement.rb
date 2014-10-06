require 'uri'

module Battlenet
	module Modules
		module WOW
			module Achievement
				def achievement(id, options = {})
					id = URI.escape id

					get "/achievement/#{id}", options
				end
			end
		end
	end
end