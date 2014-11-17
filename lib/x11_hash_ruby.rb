require "x11_hash_ruby"
# require File.expand_path('./x11_hash_ruby.so', __FILE__)

module X11Hash
	class Engine
		def self.hash(input)
			if args.length == 1
				output = __x11_hash(input)
				return output
			else
				raise ArgumentError.new("invalid number of arguments (1 required, input data)")
			end
		end
	end
end
