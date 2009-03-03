require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the open-uri-mapping plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the dm-ys plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'open-uri-mapping'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end


######################################################################
### for gem

require 'rubygems'
require 'rake/gempackagetask'

GEM_NAME = "open-uri-mapping"
AUTHOR = "maiha"
EMAIL = "maiha@wota.jp"
HOMEPAGE = "http://github.com/maiha/open-uri-mapping"
SUMMARY = "a wrapper to open-uri that offers filename mapping, which is useful for test"
GEM_VERSION = "0.1"

spec = Gem::Specification.new do |s|
#  s.rubyforge_project = 'merb'
  s.name             = GEM_NAME
  s.version          = GEM_VERSION
  s.platform         = Gem::Platform::RUBY
  s.has_rdoc         = true
  s.extra_rdoc_files = ["README", "MIT-LICENSE"]
  s.summary          = SUMMARY
  s.description      = s.summary
  s.author           = AUTHOR
  s.email            = EMAIL
  s.homepage         = HOMEPAGE
  s.require_path     = 'lib'
  s.files            = %w(MIT-LICENSE README Rakefile) + Dir.glob("{core_ext,lib,spec,tasks,test}/**/*")
end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end

desc "Install the gem"
task :install do
  Merb::RakeHelper.install(GEM_NAME, :version => GEM_VERSION)
end

desc "Uninstall the gem"
task :uninstall do
  Merb::RakeHelper.uninstall(GEM_NAME, :version => GEM_VERSION)
end

desc "Create a gemspec file"
task :gemspec do
  File.open("#{GEM_NAME}.gemspec", "w") do |file|
    file.puts spec.to_ruby
  end
end

