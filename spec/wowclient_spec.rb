require 'battlenet/api'

describe Battlenet::WOWClient do
  before(:all) do
    Battlenet.configure do |config|
      config.api_key = 'test-wow-api-key'
      config.region  = :us
    end
  end

  it "should pass the api key to the wow client" do
    c = Battlenet.WOWClient
    expect(c.api_key).to eq('test-wow-api-key')
  end

  it { should respond_to(:achievement) }
  it { should respond_to(:auction_data_status) }

  it { should respond_to(:battlepet_ability) }
  it { should respond_to(:battlepet_species) }
  it { should respond_to(:battlepet_stats) }

  it { should respond_to(:challengemode_realm_leaderboard) }
  it { should respond_to(:challengemode_region_leaderboard) }

  it { should respond_to(:character_profile) }
  it { should respond_to(:character_achievements) }
  it { should respond_to(:character_appearance) }
  it { should respond_to(:character_feed) }
  it { should respond_to(:character_guild) }
  it { should respond_to(:character_hunter_pets) }
  it { should respond_to(:character_items) }
  it { should respond_to(:character_mounts) }
  it { should respond_to(:character_pets) }
  it { should respond_to(:character_pet_slots) }
  it { should respond_to(:character_progression) }
  it { should respond_to(:character_pvp) }
  it { should respond_to(:character_quests) }
  it { should respond_to(:character_reputation) }
  it { should respond_to(:character_stats) }
  it { should respond_to(:character_talents) }
  it { should respond_to(:character_titles) }
  it { should respond_to(:character_audit) }

end
