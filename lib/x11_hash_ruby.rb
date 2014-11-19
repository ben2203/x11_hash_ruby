require "hex_string"
require File.expand_path(File.dirname(__FILE__) + '/../lib/x11_hash_ruby.so')

module X11Hash
	class Engine
		def self.hash(input="")
			output = __x11_hash input
			return output.to_hex_string
		end
	end
end
