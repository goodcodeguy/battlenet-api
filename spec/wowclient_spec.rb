require 'battlenet/api'

describe Battlenet::WOWClient do
  before(:all) do
    Battlenet.configure do |config|
      config.api_key = 'test-wow-client'
      config.region  = :us
    end
  end

  it "should pass the api key to the wow client" do
    c = Battlenet.WOWClient
    expect(c.api_key).to eq('test-wow-client')
  end

  it { should respond_to(:character_profile) }
  it { should respond_to(:guild_profile) }
  it { should respond_to(:item) }
  it { should respond_to(:item_set) }
  it { should respond_to(:achievement) }
  it { should respond_to(:auction) }

  it { should respond_to(:pvp_leaderboard) }
  it { should respond_to(:quest) }
  it { should respond_to(:realm_status) }

  it { should respond_to(:recipe) }
  it { should respond_to(:spell) }

  it { should respond_to(:data) }

end
