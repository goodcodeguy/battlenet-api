module Battlenet
  module WOW
    class Item < Battlenet::APIResponse

      def initialize(options={})
        @realm          = options.delete(:item)

        @endpoint       = "/item/#{@item}"

        super(options)
      end

      def details
        get_data(@endpoint, {})
      end

    end
  end
end
