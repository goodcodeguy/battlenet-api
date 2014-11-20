module Battlenet
  module WOW
    class CharacterProfile
      attr_accessor :name, :realm, :battlegroup, :klass, :race,
                    :gender, :level, :achievementPoints, :thumbnail,
                    :calcClass, :totalHonorableKills

    end
  end
end
