$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_duration/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_duration"
  s.version     = RailsAdminDuration::VERSION
  s.authors     = ["Michael Colavita"]
  s.email       = ["colavitam@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RailsAdminDuration."
  s.description = "TODO: Description of RailsAdminDuration."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.2"
end
