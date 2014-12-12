require 'battlenet/api'

describe Battlenet::WOWClient do
  before(:all) do
    Battlenet.configure do |config|
      config.api_key = '5g856v32mx5bwx3rwxzkt9z9yrehtuq2'
      config.region  = :us
    end
  end

  it "should pass the api key to the wow client" do
    c = Battlenet.WOWClient
    expect(c.api_key).to eq('5g856v32mx5bwx3rwxzkt9z9yrehtuq2')
  end

  it { should respond_to(:character_profile) }

end
