module Battlenet
  module WOW
    class GuildProfile < Battlenet::APIResponse

      def initialize(options={})
        @realm          = options.delete(:realm)
        @guild_name     = options.delete(:guild_name)

        @endpoint       = "/character/#{@realm}/#{@guild_name}"

        super(options)
      end


    end
  end
end
