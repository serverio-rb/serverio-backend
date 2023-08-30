# frozen_string_literal: true

require 'rake/clean'

task default: %i[clean rubocop spec]

desc 'Run RuboCop'
require 'rubocop/rake_task'
RuboCop::RakeTask.new(:rubocop) do |task|
  task.fail_on_error = true
end

desc 'Run RSpec'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/**/*_spec.rb'
end
