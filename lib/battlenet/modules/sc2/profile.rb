require 'uri'

module Battlenet
  module SC2
    def profile(id, region, name, options = {})
      id = URI.escape id
      region = URI.escape region
      name = URI.escape name

      get "/profile/#{id}/#{region}/#{name}", options
    end

    def profile_ladders(id, region, name, options = {})
      id = URI.escape id
      region = URI.escape region
      name = URI.escape name

      get "/profile/#{id}/#{region}/#{name}/ladders", options
    end

    def profile_match_history(id, region, name, options = {})
      id = URI.escape id
      region = URI.escape region
      name = URI.escape name

      get "/profile/#{id}/#{region}/#{name}/matches", options
    end
  end
end