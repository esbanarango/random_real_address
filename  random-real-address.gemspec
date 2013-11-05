# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'random-real-address/version'

Gem::Specification.new do |spec|
  spec.name          = "random-real-address"
  spec.version       = RandomRealAddress::VERSION
  spec.authors       = ["Estebam Arango Medina"]
  spec.email         = ["marranoparael31@gmail.com"]
  spec.description   = %q{}
  spec.summary       = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency('rake', '~> 10.1.0')
  spec.add_development_dependency('rspec', '~> 2.14.1')
end