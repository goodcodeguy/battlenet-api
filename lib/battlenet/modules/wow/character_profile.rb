require 'uri'

module Battlenet
	module Modules
		module WOW
			module CharacterProfile
				def character_profile(realm, character_name, options = {})
					realm = URI.escape realm
					character_name = URI.escape character_name

	        get "/character/#{realm}/#{character_name}", options
				end
				def character_achievements(realm, character_name, options = {})
					realm = URI.escape realm
					character_name = URI.escape character_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'achievements' })

	        get "/character/#{realm}/#{character_name}", options
				end
				def character_appearance(realm, character_name, options = {})
					realm = URI.escape realm
					character_name = URI.escape character_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'appearance' })

					get "/character/#{realm}/#{character_name}", options
				end
				def character_feed(realm, character_name, options = {})
					realm = URI.escape realm
					character_name = URI.escape character_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'feed' })

					get "/character/#{realm}/#{character_name}", options
				end
				def character_guild(realm, character_name, options = {})
					realm = URI.escape realm
					character_name = URI.escape character_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'guild' })

					get "/character/#{realm}/#{character_name}", options
				end
				def character_hunter_pets(realm, character_name, options = {})
					realm = URI.escape realm
					character_name = URI.escape character_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'hunter_pets' })

					get "/character/#{realm}/#{character_name}", options
				end
				def character_items(realm, character_name, options = {})
					realm = URI.escape realm
					character_name = URI.escape character_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'items' })

					get "/character/#{realm}/#{character_name}", options
				end
				def character_mounts(realm, character_name, options = {})
					realm = URI.escape realm
					character_name = URI.escape character_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'mounts' })

					get "/character/#{realm}/#{character_name}", options
				end
				def character_pets(realm, character_name, options = {})
					realm = URI.escape realm
					character_name = URI.escape character_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'pets' })

					get "/character/#{realm}/#{character_name}", options
				end
				def character_pet_slots(realm, character_name, options = {})
					realm = URI.escape realm
					character_name = URI.escape character_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'pet_slots' })

					get "/character/#{realm}/#{character_name}", options
				end
				def character_progression(realm, character_name, options = {})
					realm = URI.escape realm
					character_name = URI.escape character_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'progression' })

					get "/character/#{realm}/#{character_name}", options
				end
				def character_pvp(realm, character_name, options = {})
					realm = URI.escape realm
					character_name = URI.escape character_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'pvp' })

					get "/character/#{realm}/#{character_name}", options
				end
				def character_quests(realm, character_name, options = {})
					realm = URI.escape realm
					character_name = URI.escape character_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'quests' })

					get "/character/#{realm}/#{character_name}", options
				end
				def character_reputation(realm, character_name, options = {})
					realm = URI.escape realm
					character_name = URI.escape character_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'reputation' })

					get "/character/#{realm}/#{character_name}", options
				end
				def character_stats(realm, character_name, options = {})
					realm = URI.escape realm
					character_name = URI.escape character_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'stats' })

					get "/character/#{realm}/#{character_name}", options
				end
				def character_talents(realm, character_name, options = {})
					realm = URI.escape realm
					character_name = URI.escape character_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'talents' })

					get "/character/#{realm}/#{character_name}", options
				end
				def character_titles(realm, character_name, options = {})
					realm = URI.escape realm
					character_name = URI.escape character_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'titles' })

					get "/character/#{realm}/#{character_name}", options
				end
				def character_audit(realm, character_name, options = {})
					realm = URI.escape realm
					character_name = URI.escape character_name

					options[:query] ||= {}
	        options[:query].merge!({ :fields => 'audit' })

					get "/character/#{realm}/#{character_name}", options
				end
			end
		end
	end
end