require 'uri'

module Battlenet
  module WOW
    def item(item_id, options = {})
      item_id = URI.escape item_id.to_s

      get "/item/#{item_id}", options
    end

    def item_set(set_id, options = {})
      set_id = URI.escape set_id.to_s

      get "/item/set/#{set_id}", options
    end
  end
end
