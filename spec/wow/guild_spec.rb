require 'spec_helper'

describe Battlenet::WOW::Guild do

  context "when looking up a guild" do
    before do
      Battlenet.configure do |config|
        config.api_key = ENV['BATTLENET_API_KEY']
        config.region  = :us
      end
      @wow_client = Battlenet.WOWClient
    end

  end

  it { should respond_to(:profile) }
  it { should respond_to(:achievements) }
  it { should respond_to(:members) }
  it { should respond_to(:news) }
  it { should respond_to(:challenge) }

end
