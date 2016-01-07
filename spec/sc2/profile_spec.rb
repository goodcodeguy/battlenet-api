require 'spec_helper'

describe Battlenet::SC2::Profile do

  context "when looking up profile" do
    before do
      Battlenet.configure do |config|
        config.api_key = ENV['BATTLENET_API_KEY']
        config.region  = :us
      end
      @sc2_client = Battlenet.SC2Client
    end

  end

  it { should respond_to(:info) }
  it { should respond_to(:ladders) }
  it { should respond_to(:match_history) }

end
