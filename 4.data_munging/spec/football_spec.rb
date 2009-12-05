basedir = File.join(File.dirname(__FILE__), "..")
require File.join(basedir, "lib", "football.rb")

describe "football" do
  it "should find the lowest temperature spread" do
    File.open(File.join(basedir, "data", "football.dat")) do |input|
      Football::min_spread(input).should == "Aston_Villa"
    end
  end
end
