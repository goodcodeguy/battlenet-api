require 'spec_helper'

describe Battlenet::WOW::Pet do

  context "when looking up a species" do
    before do
      Battlenet.configure do |config|
        config.api_key = ENV['BATTLENET_API_KEY']
        config.region  = :us
      end
      @wow_client = Battlenet.WOWClient
    end

    it "should be able to fetch details" do
      sid = 1134
      VCR.use_cassette("pet/species/#{sid}") do
        species = @wow_client.pet.species(sid)
        expect(species['speciesId']).to eq(sid)
        expect(species).to have_key('abilities')
      end
    end
  end

  it { should respond_to(:master_list) }
  it { should respond_to(:ability) }
  it { should respond_to(:species) }
  it { should respond_to(:stats) }

end
