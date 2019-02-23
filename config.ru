require File.expand_path('../config/environment', __FILE__)
require 'sass/plugin/rack'
Sass::Plugin.options[:style] = :compressed
#Sass::Plugin.options[:css_location] = App.root.join('assets').to_s
use Sass::Plugin::Rack
run App
