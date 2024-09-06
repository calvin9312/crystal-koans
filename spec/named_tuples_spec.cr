require "spec_helper"

describe Student do
  it "can create named tuples" do
    tuple = {lang: "Crystal", year: 2011}
    tuple.class.to_s.should eq "NamedTuple(lang: String, year: Int32)"
    tuple[:lang].should eq "Crystal" # key is a Symbol
  end

  it "can access named tuple string keys" do
    tuple = {"mykey": 123} # A named tuple key can also be a string literal
    tuple["mykey"].should eq 123
  end
end
