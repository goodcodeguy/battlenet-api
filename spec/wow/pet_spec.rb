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
  end

  it { should respond_to(:master_list) }
  it { should respond_to(:ability) }
  it { should respond_to(:species) }
  it { should respond_to(:stats) }

end
