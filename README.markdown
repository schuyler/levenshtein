levenshtein-ffi
===============

[![Build Status](https://travis-ci.org/dbalatero/levenshtein-ffi.svg?branch=master)](https://travis-ci.org/dbalatero/levenshtein-ffi)

Converted to FFI by David Balatero for Ruby portability.

This gem originally based on levenshtein.

Tested on:

* MRI 1.9.2
* MRI 1.9.3
* MRI 2.0.0
* Rubinius (1.9 mode)

Known Issues
============
* The C extension uses `char*` strings, and so Unicode strings will give incorrect distances.

Including in Gemfile
====================

    gem 'levenshtein-ffi', :require => 'levenshtein'

Original README
===============

The levenshtein module implements fast Damerau-Levenshtein edit distance
computation in O(n) memory and O(n^2) time, using a C wrapper. The module has a
single function:

    require 'levenshtein'
    Levenshtein.distance("string1", "string2") == 1 # returns true

This function can be used as a drop-in replacement for
Text::Levenshtein.levenshtein, which is pure Ruby and rather slow. That's it!

The code is made available under the following BSD license:

Copyright (c) 2009, Schuyler Erle.
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice,
      this list of conditions and the following disclaimer.

    * Redistributions in binary form must reproduce the above copyright notice,
      this list of conditions and the following disclaimer in the documentation
      and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

- end -
