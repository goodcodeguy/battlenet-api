require 'spec_helper'

describe Battlenet::WOW::Data do

  it { should respond_to(:battlegroups) }
  it { should respond_to(:character_races) }
  it { should respond_to(:character_classes) }
  it { should respond_to(:character_achievements) }
  it { should respond_to(:guild_rewards) }
  it { should respond_to(:guild_perks) }
  it { should respond_to(:guild_achievements) }
  it { should respond_to(:item_classes) }
  it { should respond_to(:pet_types) }
  it { should respond_to(:talents)}

end
