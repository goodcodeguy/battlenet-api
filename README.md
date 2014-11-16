# Battlenet API Gem
[![Gem Version](https://badge.fury.io/rb/battlenet-api.svg)](http://badge.fury.io/rb/battlenet-api) [![Dependency Status](https://gemnasium.com/goodcodeguy/battlenet-api.svg)](https://gemnasium.com/goodcodeguy/battlenet-api) [![Code Climate](https://codeclimate.com/github/goodcodeguy/battlenet-api/badges/gpa.svg)](https://codeclimate.com/github/goodcodeguy/battlenet-api)

## Installation

`$ gem install battlenet-api`

## How to Use

### Configuration

````ruby
Battlenet.configure do |config|
  config.api_key = 'apikey'
  config.region  = :us
end
````

### World of Warcraft Client

````ruby
client = Battlenet.WOWClient

client.achievement(id)
client.auction_data_status(realm)

client.battlepet_ability(ability_id)
client.battlepet_species(species_id)
client.battlepet_stats(species_id)

client.challengemode_realm_leaderboard(realm)
client.challengemode_region_leaderboard

client.character_profile(realm, character_name)
client.character_achievements(realm, character_name)
client.character_appearance(realm, character_name)
client.character_feed(realm, character_name)
client.character_guild(realm, character_name)
client.character_hunter_pets(realm, character_name)
client.character_items(realm, character_name)
client.character_mounts(realm, character_name)
client.character_pets(realm, character_name)
client.character_pet_slots(realm, character_name)
client.character_progression(realm, character_name)
client.character_pvp(realm, character_name)
client.character_quests(realm, character_name)
client.character_reputation(realm, character_name)
client.character_stats(realm, character_name)
client.character_talents(realm, character_name)
client.character_titles(realm, character_name)
client.character_audit(realm, character_name)

````

### Diablo 3 Client

````ruby
client = Battlenet.D3Client

client.data_item(data_id)
client.data_follower(follower_id)
client.data_artisan(artisan_id)

client.career_profile(battletag)
client.hero_profile(battletag,hero_id)
````

### Starcraft 2 Client

````ruby
client = Battlenet.S2Client

client.achievements
client.rewards

client.ladder(ladder_id)

client.profile(id, region, name)
client.profile_ladders(id, region, name)
client.profile_match_history(id, region, name)
````


## TODO

- Community OAuth Profile APIs
- Account APIs
- Unit Tests for All APIs

- Refactor Client Code to Utilize OpenStruct on JSON Responses
