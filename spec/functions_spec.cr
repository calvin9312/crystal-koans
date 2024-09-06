require "spec_helper"

def dummyfunc
  "foobar"
end

def double(x : Int)
  x * 2
end

def manyargs(*args) # *args is a "splat"
  return args.size
end

# # double splat captures named parameters
def grocerylist(amount, **what)
  return amount + what.size
end

describe Student do
  it "knows functions" do
    value = dummyfunc # function invocations returns a value
    value.should eq "foobar"
  end

  it "knows function parameters" do
    number = double(5)
    number.should eq 10
    another = double 21 # parentheses can be omitted
    another.should eq 42
  end

  it "knows splat parameters" do
    value = manyargs("you", "can", "call", "me", "with", "many", "parameters")
    value.should eq 7
  end

  it "knows double splat parameters" do
    value = grocerylist(amount: 5, bananas: 3, apples: 2, oranges: 4)
    value.should eq 8
  end
end
