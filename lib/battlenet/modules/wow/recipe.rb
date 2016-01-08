module Battlenet
  module WOW
    class Recipe < Battlenet::APIResponse

      def initialize(options={})
        @realm          = options.delete(:recipe)

        @endpoint       = "/recipe/#{@recipe}"

        super(options)
      end

      def details(options = {})
        get_data(@endpoint, options)
      end

    end
  end
end
