require 'uri'

module Battlenet
  module SC2
    def ladder(id, options = {})
      id = URI.escape id

      get "/ladder/#{id}", options
    end
  end
end