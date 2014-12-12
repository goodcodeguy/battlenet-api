require File.expand_path('../api/version', __FILE__)

require File.expand_path('../api/configuration', __FILE__)
require File.expand_path('../api/client', __FILE__)
require File.expand_path('../api/wow_client', __FILE__)
require File.expand_path('../api/d3_client', __FILE__)
require File.expand_path('../api/sc2_client', __FILE__)



module Battlenet
  extend Configuration

  def self.WOWClient(options={})
    Battlenet::WOWClient.new(options)
  end

  def self.SC2Client(options={})
    Battlenet::SC2Client.new(options)
  end

  def self.D3Client(options={})
    Battlenet::D3Client.new(options)
  end

end
