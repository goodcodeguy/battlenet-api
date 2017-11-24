module Battlenet
  module WOW
    class Character < Battlenet::APIResponse

      def initialize(options={})
        @realm          = options.delete(:realm)
        @character_name = options.delete(:character_name)
        @endpoint       = "/character/#{@realm}/#{@character_name}"

        super(options)
      end

      def profile(options = {})
        get_data(@endpoint, options)
      end

      def achievements(options = {})
        get_data(@endpoint, options.merge({fields: 'achievements'}))
      end

      def appearance(options = {})
        get_data(@endpoint, options.merge({fields: 'appearance'}))
      end

      def feed(options = {})
        get_data(@endpoint, options.merge({fields: 'feed'}))
      end

      def guild(options = {})
        get_data(@endpoint, options.merge({fields: 'guild'}))
      end

      def hunter_pets(options = {})
        get_data(@endpoint, options.merge({fields: 'hunterPets'}))
      end

      def pets(options = {})
        get_data(@endpoint, options.merge({fields: 'pets'}))
      end

      def items(options = {})
        get_data(@endpoint, options.merge({fields: 'items'}))
      end

      def mounts(options = {})
        get_data(@endpoint, options.merge({fields: 'mounts'}))
      end

      def pet_slots(options = {})
        get_data(@endpoint, options.merge({fields: 'petSlots'}))
      end

      def professions(options = {})
        get_data(@endpoint, options.merge({fields: 'professions'}))
      end

      def progression(options = {})
        get_data(@endpoint, options.merge({fields: 'progression'}))
      end

      def pvp(options = {})
        get_data(@endpoint, options.merge({fields: 'pvp'}))
      end

      def quests(options = {})
        get_data(@endpoint, options.merge({fields: 'quests'}))
      end

      def reputation(options = {})
        get_data(@endpoint, options.merge({fields: 'reputation'}))
      end

      def statistics(options = {})
        get_data(@endpoint, options.merge({fields: 'statistics'}))
      end

      def stats(options = {})
        get_data(@endpoint, options.merge({fields: 'stats'}))
      end

      def talents(options = {})
        get_data(@endpoint, options.merge({fields: 'talents'}))
      end

      def titles(options = {})
        get_data(@endpoint, options.merge({fields: 'titles'}))
      end

      def audit(options = {})
        get_data(@endpoint, options.merge({fields: 'audit'}))
      end

    end
  end
end
