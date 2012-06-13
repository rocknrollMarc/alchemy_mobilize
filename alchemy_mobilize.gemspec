$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "alchemy_mobilize/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "alchemy_mobilize"
  s.version     = AlchemyMobilize::VERSION
  s.authors     = ["Robin Böning, Thomas von Deyen"]
  s.email       = ["info@magiclabs.de"]
  s.homepage    = "magiclabs.de"
  s.summary     = "This gem allows content managers to decide if pages/elements should get rendered. It also provides a dedicated cache for mobile requests."
  s.description = "Alchemy Mobilize extends Alchemy CMS with features for mobile websites"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "alchemy_cms", "> 2.1.9"
  s.add_dependency "mobylette", "~> 2.3.0"

  s.add_development_dependency "sqlite3"
end
