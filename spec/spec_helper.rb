require 'simplecov'
SimpleCov.start { add_filter('/spec') }

require 'rake'
Rake::DefaultLoader.new.load 'Rakefile'
Rake::Task['compile:levenshtein'].invoke

require 'levenshtein'
