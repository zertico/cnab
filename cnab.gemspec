# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cnab/version'

Gem::Specification.new do |gem|
  gem.name          = "cnab"
  gem.version       = Cnab::VERSION
  gem.authors       = ["Paulo Henrique Lopes Ribeiro"]
  gem.email         = ["plribeiro3000@gmail.com"]
  gem.description   = %q{Gem used to parse CNAB files}
  gem.summary       = %q{It parse CNAB files}

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
