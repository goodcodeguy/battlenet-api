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

achievement = client.achievement({achievement: 'achievement_id'})
auction_data = client.auction({realm: 'realm_id'})
character = client.character({realm: 'realm_id', character_name: 'character_name'})

# TODO: character methods

guild = client.guild({realm: 'realm', guild_name: 'guild_name'})

# TODO: guild methods

data = client.data

# TODO: data methods

item = data.item({item: 'item_id'})
puts item.details

item = data.item_set({item_set: 'item_set_id'})
puts item.details

pvp_leaderboards = data.pvp_leaderboards({bracket: 'bracket'})
puts pvp_leaderboards.details

quest = data.quest({quest: 'quest_id'})
puts quest.details

recipe = data.recipe({recipe: 'recipe_id'})
puts recipe.details

spell = data.spell({spell: 'spell_id'})
puts spell.details

````

### Diablo 3 Client

````ruby
client = Battlenet.D3Client

#Available Methods
data = client.data

item = data.item({item: 'item_id'})
follower = data.follower({follower: 'follower_id'})
artisan = data.artisan({artisan: 'artisan_id'})

profile = client.profile({battletag: 'battletag'})
puts profile.career
puts profile.hero(hero_id)
````

### Starcraft 2 Client

````ruby
client = Battlenet.S2Client

#Available Methods
data = client.data

achievements = data.achievements
rewards = data.rewards

ladder = client.ladder({ladder_id: 'ladder_id'})
puts ladder.details

profile = client.profile({id: 'id', region: 'region', name: 'name'})
puts profile.details
puts profile.ladders
puts profile.match_history
````


## TODO

- Community OAuth Profile APIs
- Account APIs
