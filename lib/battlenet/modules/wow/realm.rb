require 'uri'

module Battlenet
  module WOW
    #TODO: Add Option realms parameter
    def realm_status(options = {})
      get "/realm/status", options
    end
  end
end