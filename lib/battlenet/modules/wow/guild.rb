module Battlenet
  module WOW
    class Guild < Battlenet::APIResponse

      def initialize(options={})
        @realm          = options.delete(:realm)
        @guild_name     = options.delete(:guild_name)

        @endpoint       = "/guild/#{@realm}/#{@guild_name}"

        super(options)
      end

      def profile
        get_data(@endpoint, {})
      end

      def members
        get_data(@endpoint, {:fields => 'members'})
      end

      def achievements
        get_data(@endpoint, {:fields => 'achievements'})
      end

      def news
        get_data(@endpoint, {:fields => 'news'})
      end

      def challenge
        get_data(@endpoint, {:fields => 'challenge'})
      end
    end
  end
end
