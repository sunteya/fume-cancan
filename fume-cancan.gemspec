# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name          = "fume-cancan"
  gem.version       = File.read(File.expand_path("../VERSION", __FILE__)).chomp
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
end