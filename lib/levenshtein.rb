require 'ffi'

module Levenshtein
  class << self
    extend FFI::Library

    # Try loading in order.
    library = File.dirname(__FILE__) + '/levenshtein'
    candidates = ['.bundle', '.so', '.dylib', ''].map { |ext| library + ext }
    # candidates = ['.bundle', '.so', '.dylib', ''].map { |ext| File.join(RbConfig::CONFIG['sitearchdir'], "levenshtein#{ext}") }
    ffi_lib(candidates)

    # Safe version of distance, checks that arguments are really strings.
    def distance(str1, str2)
      validate(str1)
      validate(str2)
      ffi_distance(str1, str2)
    end

    # Unsafe version. Results in a segmentation fault if passed nils!
    attach_function :ffi_distance, :levenshtein, %i[string string], :int

    private

    def validate(arg)
      message = "wrong argument type #{arg.class} (expected String)"
      raise TypeError, message unless arg.is_a?(String)
    end
  end
end
