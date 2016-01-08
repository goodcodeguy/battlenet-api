require 'spec_helper'

describe Battlenet::WOW::Challenge do

  it { should respond_to(:realm_leaderboard) }
  it { should respond_to(:region_leaderboard) }

end
