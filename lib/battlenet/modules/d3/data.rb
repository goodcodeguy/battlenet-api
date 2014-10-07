require 'uri'

module Battlenet
	module Modules
		module D3
			module Data
				def data_item(data, options = {})
					data = URI.escape data

					get "/data/item/#{data}", options
				end

				def data_follower(follower, options = {})
					follower = URI.escape follower

					get "/data/follower/#{follower}", options
				end

				def data_artisan(artisan, options = {})
					artisan = URI.escape artisan

					get "/data/artisan/#{artisan}", options
				end
			end
		end
	end
end