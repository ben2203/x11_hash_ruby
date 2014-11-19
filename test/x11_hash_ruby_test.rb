require 'test/unit'
require File.expand_path(File.dirname(__FILE__) + '/../lib/x11_hash_ruby.rb')

class X11HashTest < Test::Unit::TestCase
	def test_hash_hello
		str = "hello"
		expect = "\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0a\x0b\x0c\x0d\x0e\x0f"
		got = X11Hash::Engine::hash str
		assert_equal expect, got
	end
end