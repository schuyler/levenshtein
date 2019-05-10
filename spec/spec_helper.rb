require 'simplecov'
SimpleCov.start { add_filter('/spec') }

require File.dirname(__FILE__) + '/../lib/levenshtein'
