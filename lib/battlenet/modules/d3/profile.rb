require 'uri'

module Battlenet
	module Modules
		module D3
			module Profile
				def career_profile(battletag, options = {})
					battletag = URI.escape battletag

					get "/profile/#{battletag}", options
				end

				def hero_profile(battletag, id, options = {})
					battletag = URI.escape battletag
					id = URI.escape id

					get "/profile/#{battletag}/hero/#{id}", options
				end
			end
		end
	end
end