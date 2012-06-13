$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "alchemy_mobilize/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "alchemy_mobilize"
  s.version     = AlchemyMobilize::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of AlchemyMobilize."
  s.description = "TODO: Description of AlchemyMobilize."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "alchemy_cms", "> 2.1.9"
  s.add_dependency "mobylette", "2.3"

  s.add_development_dependency "sqlite3"
end
