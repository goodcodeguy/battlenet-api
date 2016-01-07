require 'uri'

module Battlenet
  module SC2
    class Ladder < Battlenet::APIResponse
      def initialize(options={})
        @ladder_id      = options.delete(:ladder_id)
        @endpoint       = "/ladder/#{@ladder_id}"

        super(options)
      end

      def info(options = {})
        get_data(@endpoint, options)
      end

    end
  end
end
