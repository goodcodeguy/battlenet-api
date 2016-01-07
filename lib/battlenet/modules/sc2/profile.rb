require 'uri'

module Battlenet
  module SC2
    class Profile < Battlenet::APIResponse
      def initialize(options={})
        @profile_id     = options.delete(:profile_id)
        @region         = options.delete(:region)
        @name           = options.delete(:name)

        @endpoint       = "/profile/#{@profile_id}/#{@region}/#{@name}"

        super(options)
      end

      def info(options = {})
        get_data(@endpoint, options)
      end

      def ladders(options = {})
        get_data("#{@endpoint}/ladders", options)
      end

      def match_history(options = {})
        get_data("#{@endpoint}/matches", options)
      end
    end
  end
end
