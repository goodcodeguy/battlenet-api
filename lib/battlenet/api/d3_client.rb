require 'battlenet/api/client'

module Battlenet

	class D3Client < Client

		def initialize(api_key = nil, region = :us)
			super(api_key, :d3, region)
		end

	end

end
