require 'spec_helper'

describe Battlenet::WOW::Pet do

  it { should respond_to(:master_list) }
  it { should respond_to(:ability) }
  it { should respond_to(:species) }
  it { should respond_to(:stats) }

end
