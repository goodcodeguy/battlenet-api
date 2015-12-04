module Battlenet
  class APIResponse

    attr_accessor :data

    def initialize(options={})
      @data           = []
      @client         = options[:client]
    end

    def get_data(path, options)
      unless @client.nil?
        response = @client.get(path, options)
        @data = response.parsed_response
      end
    end

  end
end
