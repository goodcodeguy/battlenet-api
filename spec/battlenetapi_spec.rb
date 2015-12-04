require 'spec_helper'

describe Battlenet::Client do
  context "when special characters are in realm names" do
    before do
      Battlenet.configure do |config|
        config.api_key = ENV['BATTLENET_API_KEY']
        config.region  = :eu
      end
    end

    it "should escape spaces in realm names" do
      c = Battlenet::Client.new({domain: 'http://www.test.com', endpoint: "/emerald dream/mal'ganis"})
      expect(c.endpoint).to eq('/emerald%20dream/mal\'ganis')
    end
  end
end
