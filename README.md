# Jquery::Gmap3::Rails

This gem provides your Rails 3 application with Jean-Baptiste DEMONTE's [GMAP3 Plugin for JQuery](http://gmap3.net/).

## Installation

Add this line to your application's Gemfile:

    gem 'jquery-gmap3-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jquery-gmap3-rails

## Usage

If you're using rails 3.0 or are using rails 3.1 and above and have the asset pipeline disabled you can also use this
generator to install the static files:

    $ rails g jquery:gmap3:install

Once you have the libraries installed you will first need to include the google maps API in your application layout:

    javascript_include_tag "http://maps.googleapis.com/maps/api/js?sensor=true"

Then you have to load the GMAP3 library by adding the following line to your app/assets/javascripts/application.js:

    //= require gmap3

After that it's as simple as calling the gmap3() method on the div that you want to display the map in:

    $("#map_canvas").gmap3();

For further details on the usage of GMAP3 please see the [documentation](http://gmap3.net/documentation.html).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
