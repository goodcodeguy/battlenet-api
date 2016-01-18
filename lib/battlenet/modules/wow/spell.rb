module Battlenet
  module WOW
    class Spell < Battlenet::APIResponse

      def initialize(options={})
        @spell          = options.delete(:spell)
        @endpoint       = "/spell/#{@spell}"

        super(options)
      end

      def details(options = {})
        get_data(@endpoint, options)
      end

    end
  end
end
