# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jetfuel/version'

Gem::Specification.new do |spec|
  spec.name          = "jetfuel"
  spec.version       = Jetfuel::VERSION
  spec.authors       = ["Bhargavi Satpathy"]
  spec.email         = ["bhargavisatpathy@gmail.com"]
  spec.summary       = %q{This is a gem to consume JetFuel api to shorten url}
  spec.description   = %q{This is a gem to consume JetFuel api to shorten url}
  spec.homepage      = "https://github.com/bhargavisatpathy/jetfuel_gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'faraday', '< 0.9.0'
  spec.add_dependency 'jbuilder', '~> 2.0'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

end
