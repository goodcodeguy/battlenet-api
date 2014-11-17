require 'uri'

module Battlenet
  module WOW
    class CharacterProfile

      attr_accessor :name, :realm, :battlegroup, :klass, :race,
                    :gender, :level, :achievementPoints, :thumbnail,
                    :calcClass, :totalHonorableKills

    end

    def character_profile(realm, character_name, options = {})
      realm = URI.escape realm
      character_name = URI.escape character_name

      get "/character/#{realm}/#{character_name}", options
    end
    def character_achievements(realm, character_name, options = {})
      options[:query] ||= {}
      options[:query].merge!({ :fields => 'achievements' })

      character_profile(realm, character_name, options)
    end
    def character_appearance(realm, character_name, options = {})
      options[:query] ||= {}
      options[:query].merge!({ :fields => 'appearance' })

      character_profile(realm, character_name, options)
    end
    def character_feed(realm, character_name, options = {})
      options[:query] ||= {}
      options[:query].merge!({ :fields => 'feed' })

      character_profile(realm, character_name, options)
    end
    def character_guild(realm, character_name, options = {})
      options[:query] ||= {}
      options[:query].merge!({ :fields => 'guild' })

      character_profile(realm, character_name, options)
    end
    def character_hunter_pets(realm, character_name, options = {})
      options[:query] ||= {}
      options[:query].merge!({ :fields => 'hunter_pets' })

      character_profile(realm, character_name, options)
    end
    def character_items(realm, character_name, options = {})
      options[:query] ||= {}
      options[:query].merge!({ :fields => 'items' })

      character_profile(realm, character_name, options)
    end
    def character_mounts(realm, character_name, options = {})
      options[:query] ||= {}
      options[:query].merge!({ :fields => 'mounts' })

      character_profile(realm, character_name, options)
    end
    def character_pets(realm, character_name, options = {})
      options[:query] ||= {}
      options[:query].merge!({ :fields => 'pets' })

      character_profile(realm, character_name, options)
    end
    def character_pet_slots(realm, character_name, options = {})
      options[:query] ||= {}
      options[:query].merge!({ :fields => 'pet_slots' })

      character_profile(realm, character_name, options)
    end
    def character_progression(realm, character_name, options = {})
      options[:query] ||= {}
      options[:query].merge!({ :fields => 'progression' })

      character_profile(realm, character_name, options)
    end
    def character_pvp(realm, character_name, options = {})
      options[:query] ||= {}
      options[:query].merge!({ :fields => 'pvp' })

      character_profile(realm, character_name, options)
    end
    def character_quests(realm, character_name, options = {})
      options[:query] ||= {}
      options[:query].merge!({ :fields => 'quests' })

      character_profile(realm, character_name, options)
    end
    def character_reputation(realm, character_name, options = {})
      options[:query] ||= {}
      options[:query].merge!({ :fields => 'reputation' })

      character_profile(realm, character_name, options)
    end
    def character_stats(realm, character_name, options = {})
      options[:query] ||= {}
      options[:query].merge!({ :fields => 'stats' })

      character_profile(realm, character_name, options)
    end
    def character_talents(realm, character_name, options = {})
      options[:query] ||= {}
      options[:query].merge!({ :fields => 'talents' })

      character_profile(realm, character_name, options)
    end
    def character_titles(realm, character_name, options = {})
      options[:query] ||= {}
      options[:query].merge!({ :fields => 'titles' })

      character_profile(realm, character_name, options)
    end
    def character_audit(realm, character_name, options = {})
      options[:query] ||= {}
      options[:query].merge!({ :fields => 'audit' })

      character_profile(realm, character_name, options)
    end
  end
end
