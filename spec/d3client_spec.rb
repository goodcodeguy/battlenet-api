require 'spec_helper'

describe Battlenet::D3Client do
  before(:all) do
    Battlenet.configure do |config|
      config.api_key = ENV['BATTLENET_API_KEY']
      config.region  = :us
    end
  end

  it "should pass the api key to the d3 client" do
    c = Battlenet.D3Client
    expect(c.api_key).to eq(ENV['BATTLENET_API_KEY'])
  end

  it { should respond_to(:data) }
  it { should respond_to(:profile) }

end
