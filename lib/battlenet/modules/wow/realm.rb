module Battlenet
  module WOW
    class Realm < Battlenet::APIResponse

      def initialize(options={})
        @endpoint       = "/realm/status"

        super(options)
      end

      def details
        get_data(@endpoint, {})
      end

    end
  end
end
