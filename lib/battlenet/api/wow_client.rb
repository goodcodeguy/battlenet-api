require 'battlenet/api/client'

require 'battlenet/modules/wow/achievement'
require 'battlenet/modules/wow/auction_data_status'
require 'battlenet/modules/wow/battlepet'
require 'battlenet/modules/wow/challenge_mode'
require 'battlenet/modules/wow/character_profile'
require 'battlenet/modules/wow/guild'
require 'battlenet/modules/wow/item'
require 'battlenet/modules/wow/pvp'
require 'battlenet/modules/wow/quest'
require 'battlenet/modules/wow/realm'
require 'battlenet/modules/wow/recipe'
require 'battlenet/modules/wow/spell'
require 'battlenet/modules/wow/data'

module Battlenet

    class WOWClient < Client

      include Battlenet::WOW

      def initialize(api_key = nil, region = :us)
        super(api_key, :wow, region)
      end

    end

end
