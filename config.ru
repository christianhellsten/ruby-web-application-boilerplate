require File.expand_path('../config/environment', __FILE__)
require 'sass/plugin/rack'
use Sass::Plugin::Rack
run App
