require "spec_helper"

describe Student do
  # The Nil type has only one possible value: nil.
  it "knows nil is an object" do
    Nil.class.to_s.should eq "Class"
    nil.class.to_s.should eq "Nil"
  end

  it "knows nil's methods" do
    nil.nil?.should eq true
    nil.to_s.should eq ""
  end
end
