basedir = File.join(File.dirname(__FILE__), "..")
require File.join(basedir, "lib", "weather.rb")

describe "weather" do
  it "should find the lowest temperature spread" do
    File.open(File.join(basedir, "data", "weather.dat")) do |input|
      Weather::day_with_min_spread(input).should == 14
    end
  end
end

#describe "football" do
#  datfile = File.join(basedir, "lib", "football.rb")
#  it "should find the lowest temperature spread" do
#    File.open("")
#  end
#end