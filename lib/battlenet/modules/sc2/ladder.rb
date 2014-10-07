require 'uri'

module Battlenet
  module Modules
    module SC2
      module Ladder
        def ladder(id, options = {})
          id = URI.escape id

          get "/ladder/#{id}", options
        end
      end
    end
  end
end