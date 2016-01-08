require 'spec_helper'

describe Battlenet::D3::Profile do

  it { should respond_to(:career) }
  it { should respond_to(:hero) }

end
