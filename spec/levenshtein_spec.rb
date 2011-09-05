require 'spec_helper'

describe Levenshtein do
  fixtures = [
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

  fixtures.each do |w1, w2, d|
    it "should calculate a distance of #{d} between #{w1} and #{w2}" do
      Levenshtein.distance(w1, w2).should == d
      Levenshtein.distance(w2, w1).should == d
    end
  end
end
