require 'ffi'

module Levenshtein
  class << self
    extend FFI::Library

    # Try loading in order.
    library = File.dirname(__FILE__) + "/../ext/levenshtein/levenshtein"
    candidates = ['.bundle', '.so', '.dylib', ''].map { |ext| library + ext }
    ffi_lib(candidates)

    def distance(str1, str2)
      validate(str1)
      validate(str2)
      ffi_distance(str1, str2)
    end

    private
    def validate(arg)
      unless arg.kind_of?(String)
        raise TypeError, "wrong argument type #{arg.class} (expected String)"
      end
    end

    attach_function :ffi_distance, :levenshtein, [:string, :string], :int
  end
end
