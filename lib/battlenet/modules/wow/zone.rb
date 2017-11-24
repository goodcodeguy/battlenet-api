module Battlenet
  module WOW
    class Zone < Battlenet::APIResponse

      def initialize(options={})
        @endpoint       = "/zone"
        super(options)
      end

      def master_list(options = {})
        get_data("#{@endpoint}", options)
      end

      def details(id, options = {})
        get_data("#{@endpoint}/#{id}", options)
      end

    end
  end
end
