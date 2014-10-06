require 'uri'

module Battlenet
	module Modules
		module WOW
			module BattlePet
				def battlepet_ability(ability_id, options = {})
					ability_id = URI.escape ability_id

					get "/battlepet/ability/#{ability_id}", options
				end
				def battlepet_species(species_id, options = {})
					species_id = URI.escape species_id

					get "/battlepet/species/#{species_id}"
				end
				def battlepet_stats(species_id, options = {})
					species_id = URI.escape species_id

					get "/battlepet/stats/#{species_id}"
				end
			end
		end
	end
end