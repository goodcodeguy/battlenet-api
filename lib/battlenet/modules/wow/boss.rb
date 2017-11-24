module Battlenet
  module WOW
    class Boss < Battlenet::APIResponse

      def initialize(options={})
        @endpoint       = "/boss"
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
