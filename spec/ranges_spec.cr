require "spec_helper"

describe Student do
  it "knows inclusive ranges" do
    first_range = 1..10
    other_range = Range.new(1, 10) # alternate syntax
    first_range.size.should eq 10
    first_range.exclusive?.should eq false
    other_range.size.should eq 10
    other_range.exclusive?.should eq false
  end

  it "knows exclusive ranges" do
    first_range = 1...10                            # notice the triple dot
    other_range = Range.new(1, 10, exclusive: true) # alternate syntax
    first_range.size.should eq  9
    first_range.exclusive?.should eq true
    other_range.size.should eq 9
    other_range.exclusive?.should eq true
  end
end
