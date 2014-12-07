require 'uri'

module Battlenet
  module WOW
    def quest(quest_id, options = {})
      quest_id = URI.escape quest_id.to_s

      get "/quest/#{quest_id}", options
    end
  end
end
