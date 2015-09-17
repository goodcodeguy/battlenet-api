module Battlenet
  module WOW
    class Spell < Battlenet::APIResponse

      def initialize(options={})
        @spell          = options.delete(:spell)

        @endpoint       = "/spell/#{@spell}"

        super(options)
      end

      def details
        get_data(@endpoint, {})
      end

    end
  end
end
