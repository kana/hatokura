# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hatokura/version'

Gem::Specification.new do |spec|
  spec.name          = 'hatokura'
  spec.version       = Hatokura::VERSION
  spec.authors       = ['Kana Natsuno']
  spec.email         = ['dev@whileimautomaton.net']
  spec.summary       = 'A Ruby gem to emulate Heart of Crown.'
  spec.description   = 'A Ruby gem to emulate Heart of Crown.'
  spec.homepage      = 'https://github.com/kana/hatokura'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
