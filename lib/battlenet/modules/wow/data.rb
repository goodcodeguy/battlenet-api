module Battlenet
  module WOW
    class Data < Battlenet::APIResponse

      def initialize(options={})
        super(options)
      end

      def battlegroups(options = {})
        get_data("/data/battlegroups", options)
      end

      def character_races(options = {})
        get_data("/data/character/races", options)
      end

      def character_classes(options = {})
        get_data("/data/character/classes", options)
      end

      def character_achievements(options = {})
        get_data("/data/character/achievements", options)
      end

      def guild_rewards(options = {})
        get_data("/data/guild/rewards", options)
      end

      def guild_perks(options = {})
        get_data("/data/guild/perks", options)
      end

      def guild_achievements(options = {})
        get_data("/data/guild/achievements", options)
      end

      def item_classes(options = {})
        get_data("/data/item/clases", options)
      end

      def talents(options = {})
        get_data("/dava/talents", options)
      end

      def pet_types(options = {})
        get_data("/data/pet/types", options)
      end

    end
  end
end
