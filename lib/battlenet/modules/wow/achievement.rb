module Battlenet
  module WOW
    class Achievement < Battlenet::APIResponse

      def initialize(options={})
        @achievement    = options.delete(:achievement)
        @endpoint       = "/achievement/#{@achievement}"

        super(options)
      end

      def details(options = {})
        get_data(@endpoint, options)
      end

    end
  end
end
