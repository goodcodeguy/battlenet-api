require File.expand_path('../api/version', __FILE__)

require File.expand_path('../api/configuration', __FILE__)
require File.expand_path('../api/client', __FILE__)
require File.expand_path('../api/wow_client', __FILE__)


module Battlenet
  extend Configuration

  def self.WOWClient(options={})
    Battlenet::WOWClient.new(options)
  end

  def self.SC2Client(options={})

  end

  def self.D3Client(options={})

  end

end