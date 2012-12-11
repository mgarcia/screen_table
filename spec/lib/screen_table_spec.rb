require 'spec_helper'
require 'screen_table'


describe ScreenTable do

  let(:stable) {ScreenTable.new(Array(1..32))}

  xit '#draw' do
      STDOUT.should_receive(:p).with("  1 2 3")
      stable.draw
  end
end
