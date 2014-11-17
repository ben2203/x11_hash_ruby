Gem::Specification.new do |s|
  s.name    = "x11-hash-ruby"
  s.version = "0.1.0"
  s.summary = "x11 hashing module"
  s.author  = "Luke Mitchell"
  
  s.files = Dir.glob("ext/**/*.{c,rb}") +
            Dir.glob("lib/**/*.rb")
  
  s.extensions << "ext/x11_hash_ruby/extconf.rb"
  
  s.add_development_dependency "rake-compiler"
end