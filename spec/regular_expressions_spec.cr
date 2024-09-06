require "spec_helper"

describe Student do
  it "knows regular expressions" do
    (/hello/ =~ "hello world").should eq 0
  end

  it "returns match data" do
    /hello/.match("hello world").class.should eq Regex::MatchData
  end

  it "knows about regular expressions's groups" do
    /([a-z]+) ([a-z]+)/.match("hello world").try(&.[2]).should eq "world"
  end
end
