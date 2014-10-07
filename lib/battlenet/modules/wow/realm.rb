require 'uri'

module Battlenet
	module Modules
		module WOW
			module Realm

				#TODO: Add Option realms parameter
				def realm_status(options = {})
	        get "/realm/status", options
				end
			end
		end
	end
end