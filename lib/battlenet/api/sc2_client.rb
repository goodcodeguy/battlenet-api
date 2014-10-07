require 'battlenet/api/client'

module Battlenet

	class SC2Client < Client

		def initialize(api_key = nil, region = :us)
			super(api_key, :sc2, region)
		end

	end
	
end
