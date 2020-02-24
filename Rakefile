require "bundler/gem_tasks"
require "rake/testtask"
require "rubocop/rake_task"
RuboCop::RakeTask.new

task default: :test

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList["test/**/test_*.rb"]
  t.verbose = true
end
