require 'test/unit'
require 'levenshtein'

class TestLevenshtein < Test::Unit::TestCase
  @@fixtures = [
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
  def test_levenshtein
    @@fixtures.each {|w1,w2,d|
      assert_equal d, Levenshtein.distance(w1,w2), "#{w1} vs. #{w2}"
      assert_equal d, Levenshtein.distance(w2,w1), "#{w2} vs. #{w1}"
    }
  end
end



