require 'spec_helper'

describe Battlenet::Client do
  it 'is expected not to override API url when creating multiple clients' do
    eu_client = Battlenet::Client.new(api_key: 'api_key', region: :eu, endpoint: '/wow')
    expect(eu_client.base_uri).to eq 'https://eu.api.battle.net/wow'

    us_client = Battlenet::Client.new(api_key: 'api_key', region: :us, endpoint: '/wow')
    expect(us_client.base_uri).to eq 'https://us.api.battle.net/wow'

    expect(eu_client.base_uri).to eq 'https://eu.api.battle.net/wow'
  end

  # it "should translate foreign characters for URLS (whispä)" do
  #   character = @client.character({realm: 'sargeras', character_name: 'Silverwinter'})
  # end
  #
  # it "should translate spaces accurately for URLS (emerald dream)" do
  #   character = @client.character({:realm => 'emerald dream', :character_name => 'pftpft'})
  # end
end
