module Battlenet
  module WOW
    class Character < Battlenet::APIResponse

      def initialize(options={})
        @realm          = options.delete(:realm)
        @character_name = options.delete(:character_name)

        @endpoint       = "/character/#{@realm}/#{@character_name}"

        super(options)
      end

      def profile
        get_data(@endpoint, {})
      end

      def achievements
        get_data(@endpoint, {:fields => 'achievements'})
      end

      def appearance
        get_data(@endpoint, {:fields => 'appearance'})
      end

      def feed
        get_data(@endpoint, {:fields => 'feed'})
      end

      def guild
        get_data(@endpoint, {:fields => 'guild'})
      end

      def hunter_pets
        get_data(@endpoint, {:fields => 'hunterPets'})
      end

      def pets
        get_data(@endpoint, {:fields => 'pets'})
      end

      def items
        get_data(@endpoint, {:fields => 'items'})
      end

      def mounts
        get_data(@endpoint, {:fields => 'mounts'})
      end

      def pet_slots
        get_data(@endpoint, {:fields => 'petSlots'})
      end

      def progression
        get_data(@endpoint, {:fields => 'progression'})
      end

      def pvp
        get_data(@endpoint, {:fields => 'pvp'})
      end

      def quests
        get_data(@endpoint, {:fields => 'quests'})
      end

      def reputation
        get_data(@endpoint, {:fields => 'reputation'})
      end

      def stats
        get_data(@endpoint, {:fields => 'stats'})
      end

      def talents
        get_data(@endpoint, {:fields => 'talents'})
      end

      def titles
        get_data(@endpoint, {:fields => 'titles'})
      end

      def audit
        get_data(@endpoint, {:fields => 'audit'})
      end

    end
  end
end
