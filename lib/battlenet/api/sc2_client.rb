require 'battlenet/api/client'

require 'battlenet/modules/sc2/profile'
require 'battlenet/modules/sc2/ladder'
require 'battlenet/modules/sc2/data'

module Battlenet

	class SC2Client < Client

		include Battlenet::Modules::SC2::Profile
		include Battlenet::Modules::SC2::Ladder
		include Battlenet::Modules::SC2::Data

		def initialize(api_key = nil, region = :us)
			super(api_key, :sc2, region)
		end

	end
	
end
