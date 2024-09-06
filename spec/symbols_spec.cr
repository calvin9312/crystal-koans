require "spec_helper"

# A symbol is a constant that is identified by a name without
# you having to give it a numeric value. Symbols are interpreted
# at compile time and cannot be created dynamically. The only way
# to create a Symbol is by using a symbol literal, denoted by a
# colon (:) followed by an identifier. The identifier may optionally
# be enclosed in double quotes (").

# A Symbol is stored as a unique Int32 value, using them saves memory
# compared to using strings.  Symbols are also an excellent choice
# for hash keys, instead of using Strings. symbols are Values (stack
# allocated), strings are Reference (heap allocated)

describe Student do
  it "knows symbols are comparable" do
    sym1 = :a_symbol
    sym2 = sym1
    sym2.should eq :a_symbol
  end

  it "knows symbols can be converted" do
    sym = :potatoes
    sym.to_s.should eq "potatoes"
    sym.inspect.should eq ":potatoes" # why ?
    sym.to_i.should eq :potatoes.to_i    # this can be a surprise
  end

  it "knows symbols are cheap" do
    sizeof(Symbol).should eq sizeof(Int32)
    instance_sizeof(String).should eq 16
  end

  it "knows array of symbols" do
    sym = %i(foo bar baz)
    sym[2].should eq :baz
  end
end
