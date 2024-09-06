require "spec_helper"

def method_with_block
  result = yield
  result
end

def method_with_block_arguments
  yield("Bacon")
end

describe Student do
  it "knows yield" do
    # blocks can be curly braces delimited
    first_result = method_with_block { 1 + 2 }
    first_result.should eq 3
    # or also with do .. end
    second_result = method_with_block do
      3 + 4
    end
    second_result.should eq 7
  end

  it "knows block argument passing" do
    method_with_block_arguments do |argument|
      argument.should eq "Bacon"
    end
  end
end
