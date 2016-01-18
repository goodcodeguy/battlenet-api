module Battlenet
  module WOW
    class Item < Battlenet::APIResponse

      def initialize(options={})
        @item          = options.delete(:item)
        @endpoint       = "/item/#{@item}"

        super(options)
      end

      def details(options = {})
        get_data(@endpoint, options)
      end

    end
  end
end
