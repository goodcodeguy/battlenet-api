module Battlenet
  module WOW
    class Recipe < Battlenet::APIResponse

      def initialize(options={})
        @realm          = options.delete(:recipe)

        @endpoint       = "/recipe/#{@recipe}"

        super(options)
      end

      def details
        get_data(@endpoint, {})
      end

    end
  end
end
