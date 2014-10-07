require 'uri'

module Battlenet
	module Modules
		module WOW
			module Spell
				def spell(spell_id, options = {})
					spell_id = URI.escape spell_id

	        get "/spell/#{spell_id}", options
				end
			end
		end
	end
end