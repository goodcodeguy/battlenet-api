require 'uri'

module Battlenet
  module D3
    class Profile < Battlenet::APIResponse
      def initialize(options={})
        super(options)
      end

      def career(battletag, options = {})
        get_data("/profile/#{battletag}", options)
      end

      def hero(battletag, hero_id, options = {})
        get_data("/profile/#{battletag}/hero/#{hero_id}", options)
      end
    end
  end
end
