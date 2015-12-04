require 'spec_helper'

describe Battlenet::SC2Client do
  before(:all) do
    Battlenet.configure do |config|
      config.api_key = ENV['BATTLENET_API_KEY']
      config.region  = :us
    end
  end

  it "should pass the api key to the SC2 client" do
    c = Battlenet.SC2Client
    expect(c.api_key).to eq(ENV['BATTLENET_API_KEY'])
  end

  it { should respond_to(:achievements) }
  it { should respond_to(:rewards) }

  it { should respond_to(:ladder) }

  it { should respond_to(:profile) }
  it { should respond_to(:profile_ladders) }
  it { should respond_to(:profile_match_history) }

end
