require "bundler/gem_tasks"
require 'rspec/core/rake_task'

$:.unshift File.dirname(__FILE__) + 'lib'
$:.unshift './lib', './spec'

RSpec::Core::RakeTask.new
task :default => :spec

