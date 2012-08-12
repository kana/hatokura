# -*- encoding: utf-8 -*-
require File.expand_path('../lib/hatokura/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Kana Natsuno"]
  gem.email         = ["dev@whileimautomaton.net"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "hatokura"
  gem.require_paths = ["lib"]
  gem.version       = Hatokura::VERSION
end
