require 'uri'

module Battlenet
  module WOW
    def achievement(id, options = {})
      id = URI.escape id.to_s

      get "/achievement/#{id}", options
    end
  end
end
