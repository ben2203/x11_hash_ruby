#include "ruby.h"
#include "x11.h"

VALUE X11Hash = Qnil;
VALUE X11HashEngine = Qnil;

#ifndef RSTRING_PTR
	#define RSTRING_PTR(s) (RSTRING(s)->ptr)
#endif

// x11 hashing function
VALUE method_x11_hash(VALUE self, VALUE input) {
    const char * c_input = RSTRING_PTR(input);

    char * c_output;
    x11_hash(c_input, c_output);

    return rb_str_new2(c_output);
}

// Initialising function, called by Ruby
void Init_x11_hash_ruby() {
    X11Hash = rb_define_module("X11Hash");
    X11HashEngine = rb_define_class_under(X11Hash, "Engine", rb_cObject);

    rb_define_singleton_method(X11HashEngine, "__x11_hash", method_x11_hash, 1);
}
