require "spec_helper"

class MyError < Exception
end

def failing_function(x)
  raise MyError.new("OH NO!") if x == 10
  raise "OH NO!" if x < 5
  x
end

describe Student do
  it "knows exception handling" do
    # implement code to handle this possible failure
    n = failing_function(3)
  rescue ex
	p! ex
  end

  it "knows custom exceptions" do
    expect_raises(MyError) do
      x = 10
      n = failing_function(x)
    end
  end
end
