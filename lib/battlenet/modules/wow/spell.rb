require 'uri'

module Battlenet
  module WOW
    def spell(spell_id, options = {})
      spell_id = URI.escape spell_id

      get "/spell/#{spell_id}", options
    end
  end
end