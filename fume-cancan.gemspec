# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fume/cancan/version'

Gem::Specification.new do |gem|
  gem.name          = "fume-cancan"
  gem.version       = Fume::Cancan::VERSION
  gem.authors       = ["sunteya"]
  gem.email         = ["sunteya@gmail.com"]
  gem.description   = %q{fume helper methods for CanCan}
  gem.summary       = %q{fume helper methods for CanCan}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_runtime_dependency "rails"
  
  # development
  gem.add_development_dependency "version"
  gem.add_development_dependency "cancancan"

  gem.add_development_dependency "pry-nav"
  gem.add_development_dependency "coveralls"
  gem.add_development_dependency "rspec-rails", "~> 2.14.1"
  gem.add_development_dependency "combustion", "~> 0.5.1"
  gem.add_development_dependency "rspec-do_action", "~> 0.0.3"
end
