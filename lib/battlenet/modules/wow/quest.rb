require 'uri'

module Battlenet
  module WOW
    def quest(quest_id, options = {})
      quest_id = URI.escape quest_id

      get "/quest/#{quest_id}", options
    end 
  end
end