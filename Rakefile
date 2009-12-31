require 'rubygems'
require 'rake/gempackagetask'
require 'rake/rdoctask'
require 'rubygems/specification'
require 'date'
require 'spec/rake/spectask'

# set up pretty rdoc if possible
begin
  gem 'rdoc'
  require 'sdoc'
  ENV['RDOCOPT'] = '-T lightblue'
rescue Exception
end

GEM = "bumble"
GEM_VERSION = "0.0.1"
AUTHOR = "Ola Bini"
EMAIL = "ola.bini@gmail.com"
HOMEPAGE = "http://github.com/olabini/bumble"
SUMMARY = "A small data wrapper for Google DataStore - " +
          "intended for use with Google App Engine"

spec = Gem::Specification.new do |s|
  s.name = GEM
  s.version = GEM_VERSION
  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.rdoc", "LICENSE"]
  s.summary = SUMMARY
  s.description = s.summary
  s.author = AUTHOR
  s.email = EMAIL
  s.homepage = HOMEPAGE
  s.require_path = 'lib'
  s.autorequire = GEM
  s.files = %w(LICENSE README.rdoc Rakefile) + Dir.glob("spec/**/*") + 
            %w(lib/bumble.rb lib/bumble/bumble.rb)
end

task :default => :spec

desc "Run specs"
Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.spec_opts = %w(-fs --color)
end


Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end

Rake::RDocTask.new do |rd|
   rd.main = "README.rdoc"
   rd.rdoc_files.include("README.rdoc", "lib/**/*.rb")
end

