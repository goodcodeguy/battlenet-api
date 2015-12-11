require 'spec_helper'

describe Battlenet::Client do
  context "when special characters are in realm names" do
    before do
      Battlenet.configure do |config|
        config.api_key = ENV['BATTLENET_API_KEY']
        config.region  = :eu
      end
    end
  end
end
