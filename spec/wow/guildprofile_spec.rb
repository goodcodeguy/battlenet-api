require 'spec_helper'

describe Battlenet::WOW::GuildProfile do

  it { should respond_to(:profile) }
  it { should respond_to(:achievements) }
  it { should respond_to(:members) }
  it { should respond_to(:news) }
  it { should respond_to(:challenge) }

end
