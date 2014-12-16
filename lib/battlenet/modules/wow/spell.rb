module Battlenet
  module WOW
    class Spell < Battlenet::APIResponse

      def initialize(options={})
        @realm          = options.delete(:spell)

        @endpoint       = "/item/#{@spell}"

        super(options)
      end

      def details
        get_data(@endpoint, {})
      end

    end
  end
end
