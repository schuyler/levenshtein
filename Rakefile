begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "levenshtein-ffi"
    gemspec.summary = "An FFI version of the levenshtein gem."
    gemspec.description = "Provides a fast, cross-Ruby implementation of the levenshtein distance algorithm."
    gemspec.email = "dbalatero@gmail.com"
    gemspec.homepage = "http://github.com/dbalatero/levenshtein-ffi"
    gemspec.authors = ["David Balatero"]
    gemspec.add_dependency "ffi", '~> 1.9'
    gemspec.add_development_dependency "rspec", '~> 2.99'
    gemspec.add_development_dependency "jeweler", '~> 2.0'
  end

  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end

