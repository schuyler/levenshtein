require 'ffi'

module Levenshtein
  extend FFI::Library

  library = File.dirname(__FILE__) + "/../ext/levenshtein/levenshtein"
  begin
    ffi_lib(library)
  rescue LoadError
    ffi_lib(library + ".bundle")
  end

  attach_function :distance, :levenshtein, [:string, :string], :int
end
