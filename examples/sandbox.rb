require 'battlenet/api'

Battlenet.configure do |config|
  config.api_key = '5g856v32mx5bwx3rwxzkt9z9yrehtuq2'
  config.region  = :us
end

wow_client = Battlenet.WOWClient

guild = wow_client.guild_profile({:realm => "sargeras", :guild_name => "midwinter"})
puts guild.profile

character = wow_client.character_profile({:realm => 'sargeras', :character_name => 'Silverwinter'})
puts character.profile
