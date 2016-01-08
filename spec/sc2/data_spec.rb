require 'spec_helper'

describe Battlenet::SC2::Data do

  it { should respond_to(:achievements) }
  it { should respond_to(:rewards) }

end
