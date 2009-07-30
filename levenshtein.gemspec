Gem::Specification.new do |s|
    s.name          = 'Levenshtein'
    s.version       = "1.0.0"
    s.author        = "Schuyler Erle"
    s.email         = 'schuyler@entropyfree.com'
    s.homepage      = 'http://entropyfree.com/'
    s.description   = "Fast edit distance computation."
    s.summary       = "Fast string edit distance computation, using 
                       the Damerau-Levenshtein algorithm."
    s.platform      = Gem::Platform::CURRENT
    s.extensions    = "extconf.rb"
    s.files         = ["levenshtein.c", "levenshtein.h", "ruby.c"]
    s.test_files    = ["test.rb"]
    s.has_rdoc      = false
    s.extra_rdoc_files  =   ["README.txt"]
end
