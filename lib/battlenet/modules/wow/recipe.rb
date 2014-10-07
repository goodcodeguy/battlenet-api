require 'uri'

module Battlenet
	module Modules
		module WOW
			module Recipe
				def recipe(recipe_id, options = {})
					recipe_id = URI.escape recipe_id

	        get "/recipe/#{recipe_id}", options
				end
			end
		end
	end
end