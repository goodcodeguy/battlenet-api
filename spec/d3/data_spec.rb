require 'spec_helper'

describe Battlenet::D3::Data do

  context "when looking up data" do
    before do
      Battlenet.configure do |config|
        config.api_key = ENV['BATTLENET_API_KEY']
        config.region  = :us
      end
      @d3_client = Battlenet.D3Client
    end

  end

  it { should respond_to(:item) }
  it { should respond_to(:follower) }
  it { should respond_to(:artisan) }

end
