require 'ffi'

module Levenshtein
  extend FFI::Library

  # Try loading in order.
  library = File.dirname(__FILE__) + "/../ext/levenshtein/levenshtein"
  candidates = ['.bundle', '.so', '.dylib', ''].map { |ext| library + ext }
  ffi_lib(candidates)
  
  attach_function :distance, :levenshtein, [:string, :string], :int
end
