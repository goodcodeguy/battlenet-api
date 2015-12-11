require 'spec_helper'

describe Battlenet::WOW::Character do

  context "when looking up a character" do
    before do
      Battlenet.configure do |config|
        config.api_key = ENV['BATTLENET_API_KEY']
        config.region  = :us
      end
      @wow_client = Battlenet.WOWClient
    end

    it "should be able to find 'Silverwinter' on 'Sargeras'" do
      character = @wow_client.character({:realm => 'sargeras', :character_name => 'Silverwinter'})
      VCR.use_cassette('character/profile') do
        expect(character.profile['name']).to eq('Silverwinter')
      end
    end

    it "should be able to find 'whispä' on 'frostmourne' (handle foreign characters)" do
      character = @wow_client.character({:realm => 'frostmourne', :character_name => 'whispä'})
      VCR.use_cassette('character/profile_whispä') do
        expect(character.profile['name']).to eq('Whispä')
      end
    end

    it "should not be able to find 'ThisCharacterShouldntExist' on 'Sargeras'" do
      character = @wow_client.character({realm: 'sargeras', character_name: 'ThisCharacterShouldntExist'})
      VCR.use_cassette('character/invalid_character') do
        expect(character.profile['reason']).to eq('Character not found.')
      end
    end

  end

  it { should respond_to(:profile) }
  it { should respond_to(:achievements) }
  it { should respond_to(:feed) }
  it { should respond_to(:appearance) }
  it { should respond_to(:guild) }
  it { should respond_to(:hunter_pets) }
  it { should respond_to(:pets) }
  it { should respond_to(:items) }
  it { should respond_to(:mounts) }
  it { should respond_to(:pet_slots) }
  it { should respond_to(:progression) }
  it { should respond_to(:pvp) }
  it { should respond_to(:quests) }
  it { should respond_to(:reputation) }
  it { should respond_to(:stats) }
  it { should respond_to(:talents) }
  it { should respond_to(:titles) }
  it { should respond_to(:audit) }

end
