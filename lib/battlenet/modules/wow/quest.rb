require 'uri'

module Battlenet
  module Modules
    module WOW
      module Quest
        def quest(quest_id, options = {})
          quest_id = URI.escape quest_id

          get "/quest/#{quest_id}", options
        end
      end
    end
  end
end