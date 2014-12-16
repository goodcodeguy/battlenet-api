module Battlenet
  module WOW
    class ItemSet < Battlenet::APIResponse

      def initialize(options={})
        @realm          = options.delete(:item_set)

        @endpoint       = "/item/set/#{@item_set}"

        super(options)
      end

      def details
        get_data(@endpoint, {})
      end

    end
  end
end
