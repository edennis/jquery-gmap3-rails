require 'rails'

# Supply generator for Rails 3.0.x or if asset pipeline is not enabled
if ::Rails.version < "3.1" || !::Rails.application.config.assets.enabled
  module Jquery
    module Gmap3
      module Generators
        class InstallGenerator < ::Rails::Generators::Base

          desc "This generator installs the GMAP3 Plugin for JQuery #{Jquery::Gmap3::Rails::JQUERY_GMAP3_VERSION}"
          source_root File.expand_path('../../../../../vendor/assets/javascripts', __FILE__)

          def copy_gmap3
            say_status("copying", "GMAP3 Plugin for jQuery (#{Jquery::Gmap3::Rails::JQUERY_GMAP3_VERSION})", :green)
            copy_file "gmap3.js", "public/javascripts/gmap3.js"
            copy_file "gmap3.min.js", "public/javascripts/gmap3.min.js"
          end

        end
      end
    end
  end
else
  module Jquery
    module Gmap3
      module Generators
        class InstallGenerator < ::Rails::Generators::Base
          desc "Show instructions so people will know what to do when mistakenly using generator for Rails 3.1 apps"

          def do_nothing
            say_status("deprecated", "You are using Rails #{::Rails.version} with the asset pipeline enabled, so this generator is not needed.")
            say_status("", "The necessary files are already in your asset pipeline.")
            say_status("", "Just add `//= require gmap3` to your app/assets/javascripts/application.js")
            say_status("", "If you upgraded your app from Rails 3.0 and still have gmap3.js in your javascripts, be sure to remove it.")
            say_status("", "If you do not want the asset pipeline enabled, you may turn it off in application.rb and re-run this generator.")
          end
        end
      end
    end
  end
end
