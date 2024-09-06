require "spec_helper"

describe Student do
  it "can create empty hashes" do
    # NOTE: in Crystal we need types for empty hashes since it cannot be inferred
    # if you come from ruby, see http://www.crystalforrubyists.com/
    empty_hash = Hash(String, Int32).new
    empty_hash.size.should eq 0
    other_empty = {} of String => Int32 # another notation: key => value
    empty_hash.should eq other_empty
  end

  it "knows hash literals" do
    hash = {:one => "uno", :two => "dos"}
    hash.size.should eq 2
  end

  it "can access hashes" do
    hash = {:one => "uno", :two => "dos"}
    hash[:one].should eq "uno"
    # after solving the above, try removing the comment ....
    # hash[:three].should eq nil
  end

  it "can modify hashes" do
    hash = {:one => "uno", :two => "dos"}
    hash[:one] = "eins"
    hash[:one].should eq "eins"
    hash[:three] = "tres"
    hash.size.should eq 3
  end

  it "can access hash key and values" do
    hash = {:one => "uno", :two => "dos"}
    hash.keys.size.should eq 2
    hash.values.includes?("uno").should eq true
  end

  it "knows method put_if_absent" do
    h = {} of Int32 => String
    h.put_if_absent(1, "one")
    h.put_if_absent(1, "uno")
    h.put_if_absent(2, "two")
    h[1].should eq "one"
  end
end
