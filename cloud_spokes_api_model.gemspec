$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cloud_spokes_api_model/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cloud_spokes_api_model"
  s.version     = CloudSpokes::VERSION
  s.authors     = ["Tristan Gomez"]
  s.email       = ["tristan.gomez@gmail.com"]
  s.homepage    = ""
  s.summary     = "Abstract API Model for interacting with the CloudSpokes API"
  s.description = "Abstract API Model for interacting with the CloudSpokes API"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.8"
  s.add_dependency "activemodel", "~> 3.2.8"

  s.add_development_dependency "sqlite3"
end
