require 'battlenet/api'

describe Battlenet::Client do
  it "should allow you to configure it for a valid region" do
    Battlenet.configure do |config|
      config.api_key = 'test-api'
      config.region  = :eu
    end

    c = Battlenet.WOWClient
    expect(c.region).to eq(:eu)
  end

  it "should have the default region of :us" do
    Battlenet.configure do |config|
      config.api_key = 'test-api'
    end

    c = Battlenet.WOWClient
    expect(c.region).to eq(:us)
  end

end
