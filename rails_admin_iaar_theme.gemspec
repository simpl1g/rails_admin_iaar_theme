$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_iaar_theme/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_iaar_theme"
  s.version     = RailsAdminIaarTheme::VERSION
  s.authors     = ["Konstantin Ilchenko"]
  s.email       = ["simpli4eg@gmail.com"]
  s.homepage    = "git://github.com/simpl1g/rails_admin_iaar_theme.git"
  s.description = "Adds stats to rails admin"

  s.files = Dir["{app,lib,vendor}/**/**/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "jquery-rails"
end
