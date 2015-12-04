# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'battlenet/api/version'

Gem::Specification.new do |spec|
  spec.name          = "battlenet-api"
  spec.version       = Battlenet::Api::VERSION
  spec.authors       = ["goodcodeguy"]
  spec.email         = ["goodcodeguy@gmail.com"]
  spec.summary       = "Battlenet Client API"
  spec.description   = "API Wrapper for the Battlenet API"
  spec.homepage      = "https://github.com/goodcodeguy/battlenet-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "httparty", "~> 0.13"
  spec.add_runtime_dependency "oauth2", "~> 1.0"
  spec.add_runtime_dependency "addressable", "~> 2.3"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1"
end
