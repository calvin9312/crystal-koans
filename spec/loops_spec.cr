require "spec_helper"

describe Student do
  it "knows while loops" do
    i = 0
    result = [] of Int32

    while i < 10
      i += 1
      next if (i % 2) == 0
      result << i
    end

    result.should eq [ 1, 3, 5, 7, 9 ]
  end

  it "knows times loops" do
    sum = 0
    10.times do
      sum += 1
    end
    sum.should eq 10
  end

  it "knows upto, downto loops" do
    sum1, sum2 = 0, 0
    1.upto 10 do |n| # end is included or not ?
      sum1 += n
    end
    1.downto 10 do |n|
      sum2 += n
    end
    sum1.should eq 55
    (sum1 == sum2).should eq false
  end

  it "knows until loops" do
    n = 42
    steps = 0

    until n == 4 # https://en.wikipedia.org/wiki/Collatz_conjecture
      n = n / 2 if n % 2 == 0
      n = n * 3 + 1 if n % 2 == 1
      steps += 1
    end

    steps.should eq 5
  end

  it "knows each loops" do
    [2, 4, 6, 8].each do |n|
      (n % 2).should eq 0
    end
  end
end
