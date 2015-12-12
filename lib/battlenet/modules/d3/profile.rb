require 'uri'

module Battlenet
  module D3
    def career_profile(battletag, options = {})
      get "/profile/#{battletag}", options
    end

    def hero_profile(battletag, id, options = {})
      get "/profile/#{battletag}/hero/#{id}", options
    end
  end
end
