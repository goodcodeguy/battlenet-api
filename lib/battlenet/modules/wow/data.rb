require 'uri'

module Battlenet
  module WOW
    def data_battlegroups(options = {})
      get "/data/battlegroups", options
    end
    def data_character_races(options = {})
      get "/data/character/races", options
    end
    def data_character_classes(options = {})
      get "/data/character/classes", options
    end
    def data_character_achievements(options = {})
      get "/data/character/achievements", options
    end
    def data_guild_rewards(options = {})
      get "/data/guild/rewards", options
    end
    def data_guild_perks(options = {})
      get "/data/guild/perks", options
    end
    def data_guild_achievements(options = {})
      get "/data/guild/achievements", options
    end
    def data_item_classes(options = {})
      get "/data/item/classes", options
    end
    def data_talents(options = {})
      get "/data/talents", options
    end
    def data_pet_types(options = {})
      get "/data/pet/types", options
    end
  end
end