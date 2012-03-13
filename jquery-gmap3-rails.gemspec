# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jquery/gmap3/rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Erick Dennis"]
  gem.email         = ["erick.dennis@gmail.com"]
  gem.description   = "This gem provides your Rails 3 application with the GMAP3 Plugin for JQuery."
  gem.summary       = "Use GMAP3 Plugin for JQuery with Rails 3"
  gem.homepage      = "http://github.com/erickd/jquery-gmap3-rails"

  # todo: add the correct jquery-rails version
  gem.add_dependency "jquery-rails", ">= 1.0"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "jquery-gmap3-rails"
  gem.require_paths = ["lib"]
  gem.version       = Jquery::Gmap3::Rails::VERSION
end
