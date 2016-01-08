require 'spec_helper'

describe Battlenet::SC2::Profile do

  it { should respond_to(:details) }
  it { should respond_to(:ladders) }
  it { should respond_to(:match_history) }

end
