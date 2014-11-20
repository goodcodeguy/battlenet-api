module Battlenet
  module WOW
    class CharacterProfile < Battlenet::APIResponse

      attr_accessor :name, :realm, :battlegroup, :klass, :race,
                    :gender, :level, :achievementPoints, :thumbnail,
                    :calcClass, :totalHonorableKills

      def initialize(options={})
        @realm          = options.delete(:realm)
        @character_name = options.delete(:character_name)

        super(options)
      end

    end
  end
end
