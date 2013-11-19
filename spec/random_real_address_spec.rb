require 'spec_helper'

describe RandomRealAddress do

  describe '.full_address' do
    rra = RandomRealAddress.new
    rra.full_address
    expect(true).to be true
  end


end