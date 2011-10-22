# -*- encoding: utf-8 -*-
require File.expand_path('../lib/acts_as_chain/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Linus Oleander"]
  gem.email         = ["linus@oleander.nu"]
  gem.description   = %q{Define a set methods that should be chainable}
  gem.summary       = %q{Define a set methods that should be chainable}
  gem.homepage      = "https://github.com/oleander/acts_as_chain"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "acts_as_chain"
  gem.require_paths = ["lib"]
  gem.version       = ActsAsChain::VERSION
    
  s.add_development_dependency("rspec")
  s.required_ruby_version = "~> 1.9.0"
end
