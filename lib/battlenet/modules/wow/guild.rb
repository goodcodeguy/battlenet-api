module Battlenet
  module WOW
    class Guild < Battlenet::APIResponse

      def initialize(options={})
        @realm          = options.delete(:realm)
        @guild_name     = options.delete(:guild_name)
        @endpoint       = "/guild/#{@realm}/#{@guild_name}"

        super(options)
      end

      def profile(options = {})
        get_data(@endpoint, options)
      end

      def members(options = {})
        get_data(@endpoint, options.merge({fields: 'members'}))
      end

      def achievements(options = {})
        get_data(@endpoint, options.merge({fields: 'achievements'}))
      end

      def news(options = {})
        get_data(@endpoint, options.merge({fields: 'news'}))
      end

      def challenge(options = {})
        get_data(@endpoint, options.merge({fields: 'challenge'}))
      end
    end
  end
end
