module Battlenet
  class APIResponse

    attr_accessor :data

    def initialize(options={})
      @data           = []
      @client         = options[:client]
    end

    def get_data(path, options)
      unless @client.nil?
        @data = @client.get(path, options)
      end
    end

  end
end
