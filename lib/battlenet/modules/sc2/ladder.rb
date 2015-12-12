require 'uri'

module Battlenet
  module SC2
    def ladder(id, options = {})
      get "/ladder/#{id}", options
    end
  end
end
