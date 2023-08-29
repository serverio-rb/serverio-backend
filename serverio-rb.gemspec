# frozen_string_literal: true

require 'English'

Gem::Specification.new do |s|
  s.required_ruby_version = '>= 3.0'
  s.name = 'serverio-rb'
  s.version = '0.0.3'
  s.license = 'MIT'
  s.files = Dir['lib/**/*.rb'] + %w[bin/frb README.md LICENSE CODE_OF_CONDUCT.md COMMIT_CONVENTION.md]
  s.executable = 'serverio'
  s.require_paths << 'lib'
  s.summary = ''
  s.authors = ['Artem Fomchenkov']
  s.email = 'artem.fomchenkov@outlook.com'
  s.homepage = 'https://github.com/serverio-rb/serverio-rb'
  s.test_files = s.files.grep(%r{^(test)/})
  s.extra_rdoc_files = ['README.md']

  s.add_runtime_dependency 'dry-struct', '1.6.0'
  s.add_runtime_dependency 'dry-types', '1.7.1'
  s.add_runtime_dependency 'sinatra', '3.1.0'

  # s.add_development_dependency 'minitest', '5.14.0'
  # s.add_development_dependency 'rake', '12.3.3'
  # s.add_development_dependency 'rubocop', '1.7'
  # s.add_development_dependency 'simplecov', '0.22.0'
end
