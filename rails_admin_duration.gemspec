$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_duration/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_duration"
  s.version     = RailsAdminDuration::VERSION
  s.authors     = ["Michael Colavita"]
  s.email       = ["colavitam@gmail.com"]
  s.homepage    = "https://github.com/colavitam/rails_admin_duration"
  s.summary     = "RailsAdminDuration adds a duration field type to RailsAdmin."
  s.description = "RailsAdminDuration adds a duration field type to RailsAdmin. It stores durations in seconds (like Rails's Duration type) and can be used with integer columns."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", ">= 4.2.0"
  s.add_dependency "rails_admin", ">= 0.6.8"
end
