Gem::Specification.new do |s|
  s.name     = "stylize"
  s.version  = "0.0.1"
  s.author   = "Bree Sears"
  s.email    = "blynn78@gmail.com"
  s.summary  = "css generators"
  
  s.files    = Dir["{lib,rails_generators}/**/*", "[A-Z]*"]
  s.require_path = "lib"
  
  s.add_development_dependency 'rspec-rails', '~> 2.0.1'
  s.add_development_dependency 'cucumber', '~> 0.9.2'
  s.add_development_dependency 'rails', '~> 3.0.0'
  s.add_development_dependency 'sqlite3-ruby', '~> 1.3.1'  
  
  s.rubyforge_project = s.name
  s.required_rubygems_version = ">= 1.3.4"
end