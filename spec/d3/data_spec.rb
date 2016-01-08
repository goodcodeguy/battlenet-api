require 'spec_helper'

describe Battlenet::D3::Data do

  it { should respond_to(:item) }
  it { should respond_to(:follower) }
  it { should respond_to(:artisan) }

end
