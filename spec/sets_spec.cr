require "spec_helper"

# Set implements a collection of unordered values with no duplicates.

describe Student do
  s1 = Set{1, 2}
  s2 = [1, 2].to_set
  s3 = Set.new [1, 2]

  it "knows how to create a Set" do
    equal = (s1 == s2) && (s2 == s3)
    equal.should eq true
  end

  it "knows subset of a Set" do
    s1.add(2)
    s1.concat([6, 8])
    s1.subset_of?(s2).should eq false
    s2.subset_of?(s1).should eq true
  end
end
