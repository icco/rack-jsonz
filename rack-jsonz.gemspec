# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/jsonz/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-jsonz"
  spec.version       = Rack::Jsonz::VERSION
  spec.authors       = ["Nat Welch"]
  spec.email         = ["nat@natwelch.com"]
  spec.summary       = %q{A rack middleware that outputs status when you hit /jsonz.}
  spec.description   = %q{}
  spec.homepage      = "http://github.com/icco/rack-jsonz"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "oj"
  spec.add_dependency "rack"
  spec.add_dependency "system"
  spec.add_dependency "usagewatch"
  spec.add_dependency "usagewatch_ext"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
