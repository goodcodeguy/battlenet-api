require 'spec_helper'

describe Battlenet::WOW::Zone do

  it { should respond_to(:master_list) }
  it { should respond_to(:details) }

end
