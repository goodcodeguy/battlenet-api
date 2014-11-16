require 'battlenet/api'

describe Battlenet::SC2Client do
  before(:all) do
    Battlenet.configure do |config|
      config.api_key = 'test-sc2client-api'
      config.region  = :us
    end
  end

  it "should pass the api key to the SC2 client" do
    c = Battlenet.SC2Client
    expect(c.api_key).to eq('test-sc2client-api')
  end

  it { should respond_to(:achievements) }
  it { should respond_to(:rewards) }

  it { should respond_to(:ladder) }

  it { should respond_to(:profile) }
  it { should respond_to(:profile_ladders) }
  it { should respond_to(:profile_match_history) }

end
