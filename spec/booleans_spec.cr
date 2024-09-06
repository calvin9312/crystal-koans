require "spec_helper"

describe Student do
  it "knows the truth" do
    t = true
    t.should eq true # what is truth ?
  end

  it "knows boolean algebra" do
    a = true
    b = false
    c = a | b
    c.should eq true
    d = a & b
    d.should eq false
  end

  it "knows true stuff #1" do
    a = 0

    if a
      b = true
    else
      b = false
    end

    b.should eq true
  end

  it "knows true stuff #2" do
    a = nil

    if a
      b = true
    else
      b = false
    end

    b.should eq false
  end
end
