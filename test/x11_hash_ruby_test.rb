require 'test/unit'
require File.expand_path(File.dirname(__FILE__) + '/../lib/x11_hash_ruby.rb')

class X11HashTest < Test::Unit::TestCase
	def test_hash_hello
		str = "hello"
		expect = "7d 6d af 9f dd 03 4b bd fd 97 e0 f5 fb 97 5c 9a a0 92 a9 09 d0 f3 13 82 86 ff f4 6c e5 c4 c6 36"
		got = X11Hash::Engine::hash str
		assert_equal expect, got
	end
end