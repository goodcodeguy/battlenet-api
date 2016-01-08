module Battlenet
  module WOW
    class Realm < Battlenet::APIResponse

      def initialize(options={})
        @endpoint       = "/realm/status"

        super(options)
      end

      def details(options = {})
        get_data(@endpoint, options)
      end

    end
  end
end
