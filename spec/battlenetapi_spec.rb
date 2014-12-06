require 'battlenet/api'

describe Battlenet::Client do
  it "should allow you to configure it for a valid region" do
    Battlenet.configure do |config|
      config.api_key = 'test-api'
      config.region  = :eu
    end

    a = Battlenet.WOWClient
    expect(a.region).to eq(:eu)

    Battlenet.configure do |config|
      config.region = :us
    end

    b = Battlenet.WOWClient
    expect(b.region).to eq(:us)
    
  end
end
