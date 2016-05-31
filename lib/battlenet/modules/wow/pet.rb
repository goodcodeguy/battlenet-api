module Battlenet
  module WOW
    class Pet < Battlenet::APIResponse

      def initialize(options={})
        @endpoint       = "/pet"
        super(options)
      end

      def master_list(options = {})
        get_data(@endpoint, options)
      end

      def ability(id, options = {})
        get_data("#{@endpoint}/ability/#{id}", options)
      end

      def species(id, options = {})
        get_data("#{@endpoint}/species/#{id}", options)
      end

      def stats(species_id, options = {})
        get_data("#{@endpoint}/stats/#{species_id}", options)
      end
    end
  end
end
