require 'battlenet/api'

describe Battlenet::Client do
  before(:all) do
    Battlenet.configure do |config|
      config.api_key = 'test-api'
      config.region  = :us
    end
  end

end
