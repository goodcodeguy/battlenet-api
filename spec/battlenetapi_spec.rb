require 'battlenet/api'

describe Battlenet::Client do
  before(:all) do
    Battlenet.configure do |config|
      config.api_key = '5g856v32mx5bwx3rwxzkt9z9yrehtuq2'
    end
  end

  context "when an api key is set" do
    it "should let me set the api key" do
      expect(Battlenet.api_key).to eq('5g856v32mx5bwx3rwxzkt9z9yrehtuq2')
    end

    it "should pass the api key to the wow client" do
      c = Battlenet.WOWClient
      expect(c.api_key).to eq('5g856v32mx5bwx3rwxzkt9z9yrehtuq2')
    end

    it "should pass the api key to the sc2 client"
    it "should pass the api key to the d3 client"

  end
  

end