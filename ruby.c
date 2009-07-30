#include <ruby.h>
#include "levenshtein.h"

static VALUE module;

VALUE wrap_levenshtein (VALUE self, VALUE word1, VALUE word2) {
    return UINT2NUM(levenshtein(STR2CSTR(word1), STR2CSTR(word2)));
}

void Init_levenshtein (void) {
    module = rb_define_module("Levenshtein");
    rb_define_module_function(module, "distance", wrap_levenshtein, 2);
}
