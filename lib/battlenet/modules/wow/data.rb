module Battlenet
  module WOW
    class Data < Battlenet::APIResponse

      def initialize(options={})
        super(options)
      end

      def battlegroups
        get_data("/data/battlegroups", {})
      end

      def character_races
        get_data("/data/character/races", {})
      end

      def character_classes
        get_data("/data/character/classes", {})
      end

      def character_achievements
        get_data("/data/character/achievements", {})
      end

      def guild_rewards
        get_data("/data/guild/rewards", {})
      end

      def guild_perks
        get_data("/data/guild/perks", {})
      end

      def guild_achievements
        get_data("/data/guild/achievements", {})
      end

      def item_classes
        get_data("/data/item/clases", {})
      end

      def talents
        get_data("/dava/talents", {})
      end

      def pet_types
        get_data("/data/pet/types", {})
      end

    end
  end
end
