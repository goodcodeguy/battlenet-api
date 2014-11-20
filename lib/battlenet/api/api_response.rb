module Battlenet
  class APIResponse

    def initialize(options={})
      @data           = []
      @client         = options[:client]
    end

    def get_data
      unless @client.nil?
        @data = @client.get "/character/#{@realm}/#{@character_name}"
      end
    end

    def method_missing *args
      if @data.has_key? args[0].to_s
        @data[args[0].to_s]
      else
        super
      end
    end

  end
end
