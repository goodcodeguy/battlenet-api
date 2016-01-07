require 'uri'

module Battlenet
  module SC2
    class Data < Battlenet::APIResponse
      def initialize(options={})
        super(options)
      end

      def achievements(options = {})
        get_data("/data/achievements", options)
      end

      def rewards(options = {})
        get_data("/data/rewards", options)
      end

    end
  end
end
