require 'spec_helper'

describe Levenshtein do
  before(:each) do
    @fixtures = [
      ["hello", "hello", 0],
      ["hello", "helo", 1],
      ["hello", "jello", 1],
      ["hello", "helol", 1],
      ["hello", "hellol", 1],
      ["hello", "heloll", 2],
      ["hello", "cheese", 4],
      ["hello", "saint", 5],
      ["hello", "", 5],
    ]
  end

  it "should calculate correct distances" do
    @fixtures.each do |w1, w2, d|
      Levenshtein.distance(w1, w2).should == d
      Levenshtein.distance(w2, w1).should == d
    end
  end
end
