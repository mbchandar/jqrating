require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/gempackagetask'

desc 'Default: run unit tests.'
task :default => :test

PKG_FILES = FileList[ 
	'[a-zA-Z]*', 
	'generators/**/*', 
	'lib/**/*', 
	'test/**/*' ] 

spec = Gem::Specification.new do |s| 
	s.name = "jqrating"  
	s.version = "0.1"  
	s.author = "Balachandar Muruganantham"  
	s.email = "mbchandar@gmail.com"  
	s.homepage = "http://www.balachandar.net/"  
	s.platform = Gem::Platform::RUBY 
	s.summary = "Sharing jQuery based rating system - ported from ajax-rating"  
	s.files = PKG_FILES.to_a 
	s.require_path = "lib"
	s.has_rdoc = false 
	s.extra_rdoc_files = ["README"] 
end 

desc 'Turn this plugin into a gem.' 
Rake::GemPackageTask.new(spec) do |pkg| 
  pkg.gem_spec = spec 
end 

desc 'Test the jqrating plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the jqrating plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Jqrating'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
