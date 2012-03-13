require "jquery/gmap3/rails/version"

if defined? Rails && Rails::VERSION::MAJOR == 3 && Rails::VERSION::MINOR >= 1
  require "jquery/gmap3/rails/engine"
end

module Jquery
  module Gmap3
    module Rails
      # Your code goes here...
    end
  end
end
