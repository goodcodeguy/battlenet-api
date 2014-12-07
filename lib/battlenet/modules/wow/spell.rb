require 'uri'

module Battlenet
  module WOW
    def spell(spell_id, options = {})
      spell_id = URI.escape spell_id.to_s

      get "/spell/#{spell_id}", options
    end
  end
end
