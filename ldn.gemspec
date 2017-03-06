#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.version       = File.read('VERSION').chomp
  gem.date          = File.mtime('VERSION').strftime('%Y-%m-%d')

  gem.name          = 'ldn'
  gem.homepage      = 'http://ruby-rdf.github.com/'
  gem.license       = 'Unlicense'
  gem.summary       = 'Linked Data Notifications for Ruby with RDF.rb'
  gem.description   = 'Implements a Linked Data Notifications Consumer with ' \
                      'Ruby RDF; see: https://www.w3.org/TR/ldn/#consumer'

  gem.authors       = ['Tom Johnson']
  gem.email         = 'n0reply@uw.edu'
  gem.platform      = Gem::Platform::RUBY
  gem.files         = %w(README.md UNLICENSE VERSION ) + Dir.glob('lib/**/*.rb')
  gem.require_paths = %w(lib)
  gem.has_rdoc      = false

  gem.required_ruby_version      = '>= 2.2.2'
  gem.requirements               = []
  gem.add_runtime_dependency     'rdf',      '~> 2.0'
  gem.add_development_dependency 'guard',    '~> 2.14'
  gem.add_development_dependency 'pry',      '~> 0.10'
  gem.add_development_dependency 'rdf-spec', '~> 2.2'
  gem.add_development_dependency 'rspec',    '~> 3.5'
  gem.add_development_dependency 'rubocop',  '~> 0.47.1'
  gem.add_development_dependency 'yard',     '~> 0.8'
end
