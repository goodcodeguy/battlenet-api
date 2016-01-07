require 'spec_helper'

describe Battlenet::D3::Profile do

  context "when looking up profile" do
    before do
      Battlenet.configure do |config|
        config.api_key = ENV['BATTLENET_API_KEY']
        config.region  = :us
      end
      @d3_client = Battlenet.D3Client
    end

  end

  it { should respond_to(:career) }
  it { should respond_to(:hero) }
  
end
