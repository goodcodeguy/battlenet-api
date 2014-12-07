require 'uri'

module Battlenet
  module WOW
    def battlepet_ability(ability_id, options = {})
      ability_id = URI.escape ability_id.to_s

      get "/battlepet/ability/#{ability_id}", options
    end
    def battlepet_species(species_id, options = {})
      species_id = URI.escape species_id.to_s

      get "/battlepet/species/#{species_id}"
    end
    def battlepet_stats(species_id, options = {})
      species_id = URI.escape species_id.to_s

      get "/battlepet/stats/#{species_id}"
    end
  end
end
