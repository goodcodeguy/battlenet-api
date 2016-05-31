require 'spec_helper'

describe Battlenet::Client do

  before do
    Battlenet.configure do |config|
      config.api_key = ENV['BATTLENET_API_KEY']
      config.region  = :us
    end
    @client = Battlenet::Client.new
  end

  # it "should translate foreign characters for URLS (whispä)" do
  #   character = @client.character({realm: 'sargeras', character_name: 'Silverwinter'})
  # end
  #
  # it "should translate spaces accurately for URLS (emerald dream)" do
  #   character = @client.character({:realm => 'emerald dream', :character_name => 'pftpft'})
  # end

end
