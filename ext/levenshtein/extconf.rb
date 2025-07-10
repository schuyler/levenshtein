require 'mkmf'

p "Running extconf.rb"
create_makefile('levenshtein')
system('make install')
