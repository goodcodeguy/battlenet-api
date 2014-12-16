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

achievement = client.achievement({:achievement => 'achievement_id'})
auction_data = client.auction({:realm => 'realm'})
character = client.character_profile({:realm => 'realm', :character_name => 'character_name'})

# TODO: character methods

guild = client.guild_profile({:realm => 'realm', :guild_name => 'guild_name'})

# TODO: guild methods

data = client.data

# TODO: data methods

item = client.item({:item => 'item_id'})
puts item.details

item = client.item_set({:item_set => 'item_set_id'})
puts item.details

pvp_leaderboards = client.pvp_leaderboards({:bracket => 'bracket'})
puts pvp_leaderboards.details

quest = client.quest({:quest => 'quest_id'})
puts quest.details

recipe = client.recipe({:recipe => 'recipe_id'})
puts recipe.details

spell = client.spell({:spell => 'spell_id'})
puts spell.details

````

### Diablo 3 Client

````ruby
client = Battlenet.D3Client

#Available Methods

client.data_item(data_id)
client.data_follower(follower_id)
client.data_artisan(artisan_id)

client.career_profile(battletag)
client.hero_profile(battletag,hero_id)
````

### Starcraft 2 Client

````ruby
client = Battlenet.S2Client

#Available Methods

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
