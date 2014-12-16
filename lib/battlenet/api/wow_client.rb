require 'battlenet/api/client'

require 'battlenet/modules/wow/character_profile'
require 'battlenet/modules/wow/guild_profile'
require 'battlenet/modules/wow/item'
require 'battlenet/modules/wow/item_set'
require 'battlenet/modules/wow/achievement'
require 'battlenet/modules/wow/auction'
require 'battlenet/modules/wow/pvp_leaderboard'
require 'battlenet/modules/wow/quest'
require 'battlenet/modules/wow/realm'
require 'battlenet/modules/wow/recipe'
require 'battlenet/modules/wow/spell'
require 'battlenet/modules/wow/data'

#Dir[File.expand_path('../modules/wow/*.rb', __FILE__)].each{|f| require f}

module Battlenet

  class WOWClient < Client

    def initialize(options = {})
      client_settings = { :endpoint => '/wow' }
      client_settings = client_settings.merge(options)

      super(client_settings)
    end

    def character_profile(options = {})
      opts = options.merge({:client => self})
      Battlenet::WOW::CharacterProfile.new(opts)
    end

    def guild_profile(options = {})
      opts = options.merge({:client => self})
      Battlenet::WOW::GuildProfile.new(opts)
    end

    def item(options = {})
      opts = options.merge({:client => self})
      Battlenet::WOW::Item.new(opts)
    end

    def item_set(options = {})
      opts = options.merge({:client => self})
      Battlenet::WOW::ItemSet.new(opts)
    end

    def achievement(options = {})
      opts = options.merge({:client => self})
      Battlenet::WOW::Achievement.new(opts)
    end

    def auction(options = {})
      opts = options.merge({:client => self})
      Battlenet::WOW::Auction.new(opts)
    end

    def pvp_leaderboard(options = {})
      opts = options.merge({:client => self})
      Battlenet::WOW::PVPLeaderboard.new(opts)
    end

    def quest(options = {})
      opts = options.merge({:client => self})
      Battlenet::WOW::Quest.new(opts)
    end

    def realm(options = {})
      opts = options.merge({:client => self})
      Battlenet::WOW::Realm.new(opts)
    end

    def recipe(options = {})
      opts = options.merge({:client => self})
      Battlenet::WOW::Recipe.new(opts)
    end

    def spell(options = {})
      opts = options.merge({:client => self})
      Battlenet::WOW::Spell.new(opts)
    end

    def data(options = {})
      opts = options.merge({:client => self})
      Battlenet::WOW::Data.new(opts)
    end

  end

end
