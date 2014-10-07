require 'uri'

module Battlenet
	module Modules
		module WOW
			module Guild

				#TODO: guild_profile needs to be more robust
				def guild_profile(realm, guild_name, options = {})
					realm = URI.escape realm
					guild_name = URI.escape guild_name

	        get "/guild/#{realm}/#{guild_name}", options
				end

				def guild_members(realm, guild_name, options = {})
					realm = URI.escape realm
					guild_name = URI.escape guild_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'members' })

	        get "/guild/#{realm}/#{guild_name}", options
				end

				def guild_achievements(realm, guild_name, options = {})
					realm = URI.escape realm
					guild_name = URI.escape guild_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'achievements' })

	        get "/guild/#{realm}/#{guild_name}", options
				end

				def guild_news(realm, guild_name, options = {})
					realm = URI.escape realm
					guild_name = URI.escape guild_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'news' })

	        get "/guild/#{realm}/#{guild_name}", options
				end

				def guild_challenge(realm, guild_name, options = {})
					realm = URI.escape realm
					guild_name = URI.escape guild_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'challenge' })

	        get "/guild/#{realm}/#{guild_name}", options
				end

			end
		end
	end
end