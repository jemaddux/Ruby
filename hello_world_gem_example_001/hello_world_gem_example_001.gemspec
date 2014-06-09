# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hello_world_gem_example_001/version'

Gem::Specification.new do |spec|
  spec.name          = "hello_world_gem_example_001"
  spec.version       = HelloWorldGemExample001::VERSION
  spec.authors       = ["John Maddux"]
  spec.email         = ["jemaddux@gmail.com"]
  spec.summary       = %q{summary}
  spec.description   = %q{description}
  spec.homepage      = "http://jemaddux.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
