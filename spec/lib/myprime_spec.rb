require 'spec_helper'
require 'screen_table'
require 'mathn'

describe MyPrimes do
  let(:myprimes){MyPrimes.new}

  it "as first prime number" do
    myprimes.first.should == 2
  end

  it "genetates the first 10 primes" do
    myprimes.first(10).should == [2, 3, 5, 7, 11,13, 17, 19, 23, 29]
  end

  it "genetates the first 1000 primes as Prime" do
    myprimes.first(1000).should == Prime.first(1000)
  end

end
