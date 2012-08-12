# -*- encoding: utf-8 -*-
require File.expand_path('../lib/hatokura/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Kana Natsuno']
  gem.email         = ['dev@whileimautomaton.net']
  gem.description   = 'A Ruby gem to emulate Heart of Crown.'
  gem.summary       = 'A Ruby gem to emulate Heart of Crown.'
  gem.homepage      = 'https://github.com/kana/hatokura'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'hatokura'
  gem.require_paths = ['lib']
  gem.version       = Hatokura::VERSION

  gem.add_development_dependency('rspec', '~> 2.11')
end
