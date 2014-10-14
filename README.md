# Battlenet API Gem [![Gem Version](https://badge.fury.io/rb/battlenet-api.svg)](http://badge.fury.io/rb/battlenet-api) [![Dependency Status](https://gemnasium.com/goodcodeguy/battlenet-api.svg)](https://gemnasium.com/goodcodeguy/battlenet-api) [![Code Climate](https://codeclimate.com/github/goodcodeguy/battlenet-api/badges/gpa.svg)](https://codeclimate.com/github/goodcodeguy/battlenet-api)

## Installation

`$ gem install battlenet-api`

## How to Use

### Configuration

````
Battlenet.configure do |config|
  config.api_key = 'apikey'
end
````

### World of Warcraft Client

````
client = Battlenet.WOWClient
````

### Diablo 3 Client

````
client = Battlenet.D3Client
````

### Starcraft 2 Client

````
client = Battlenet.S2Client
````


## TODO

- Community OAuth Profile APIs
- Account APIs
- Unit Tests for All APIs

- Refactor Client Code to Utilize OpenStruct on JSON Responses
