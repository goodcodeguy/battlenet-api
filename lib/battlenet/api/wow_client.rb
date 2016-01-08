require 'battlenet/api/client'

require 'battlenet/modules/wow/character'
require 'battlenet/modules/wow/guild'
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
require 'battlenet/modules/wow/challenge'
require 'battlenet/modules/wow/mount'
require 'battlenet/modules/wow/pet'

module Battlenet

  class WOWClient < Client

    def initialize(options = {})
      client_settings = { :endpoint => '/wow' }
      client_settings = client_settings.merge(options)

      super(client_settings)
    end

    def character(options = {})
      merge_options_and_return_obj(options, Battlenet::WOW::Character)
    end

    def mount(options = {})
      merge_options_and_return_obj(options, Battlenet::WOW::Mount)
    end

    def challenge(options = {})
      merge_options_and_return_obj(options, Battlenet::WOW::Challenge)
    end

    def guild(options = {})
      merge_options_and_return_obj(options, Battlenet::WOW::Guild)
    end

    def item(options = {})
      merge_options_and_return_obj(options, Battlenet::WOW::Item)
    end

    def item_set(options = {})
      merge_options_and_return_obj(options, Battlenet::WOW::ItemSet)
    end

    def achievement(options = {})
      merge_options_and_return_obj(options, Battlenet::WOW::Achievement)
    end

    def auction(options = {})
      merge_options_and_return_obj(options, Battlenet::WOW::Auction)
    end

    def pvp_leaderboard(options = {})
      merge_options_and_return_obj(options, Battlenet::WOW::PVPLeaderboard)
    end

    def quest(options = {})
      merge_options_and_return_obj(options, Battlenet::WOW::Quest)
    end

    def realm(options = {})
      merge_options_and_return_obj(options, Battlenet::WOW::Realm)
    end

    def recipe(options = {})
      merge_options_and_return_obj(options, Battlenet::WOW::Recipe)
    end

    def spell(options = {})
      merge_options_and_return_obj(options, Battlenet::WOW::Spell)
    end

    def data(options = {})
      merge_options_and_return_obj(options, Battlenet::WOW::Data)
    end

    def pet(options = {})
      merge_options_and_return_obj(options, Battlenet::WOW::Pet)
    end

    private

      def merge_options_and_return_obj(options, obj)
        opts = options.merge({:client => self})
        obj.new(opts)
      end

  end

end
