require "spec_helper"

describe Student do
  it "can create empty arrays" do
    empty_array = Array(Int32).new # this is not Ruby: please notice the Type argument
    empty_array.class.to_s.should eq "Array(Int32)"
    empty_array.size.should eq 0
  end

  it "can initialize arrays" do
    int_array = [4, 3, 2, 1]
    int_array.size.should eq 4
    int_array[1].should eq 3
  end

  it "knows special arrays" do
    array1 = %w(one two three)       # strings
    array2 = %i(apple banana orange) # symbols
    array1.size.should eq 3
    array1[1].should eq "two"
    array2[2].should eq :orange
  end

  it "knows flatten method" do
    nested_array = [1, [2, 3, [4, 5]], 6, [7, 8]]
    flat_array = nested_array.flatten
    flat_array.size.should eq 8
    flat_array[5].should eq 6
  end
end
