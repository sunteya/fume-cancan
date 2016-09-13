# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fume/cancan/version'

Gem::Specification.new do |spec|
  spec.name          = "fume-cancan"
  spec.version       = Fume::Cancan::VERSION
  spec.authors       = ["sunteya"]
  spec.email         = ["sunteya@gmail.com"]
  spec.summary       = %q{fume helper methods for CanCan}
  spec.description   = %q{fume helper methods for CanCan}
  spec.homepage      = "https://github.com/sunteya/fume-cancan"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rails"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry-nav"
  spec.add_development_dependency "coveralls"

  spec.add_development_dependency "cancancan"

  spec.add_development_dependency "rspec-rails", "3.5.2"
  spec.add_development_dependency "combustion", "0.5.5"
  spec.add_development_dependency "rspec-do_action", "0.0.4"
end
