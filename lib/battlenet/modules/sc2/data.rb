require 'uri'

module Battlenet
  module SC2
    def achievements(options = {})
      get "/data/achievements", options
    end

    def rewards(options = {})
      get "/data/rewards", options
    end
  end
end
