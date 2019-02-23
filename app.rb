require 'roda'
require 'slim'

if ENV['RACK_ENV'] == 'production'
  Sass::Plugin.options[:style] = :compressed
else
  Slim::Engine.set_options pretty: true
end

class App < Roda
  # Plugins. See https://github.com/jeremyevans/roda/tree/master/lib/roda/plugins
  plugin :assets, css: 'application.scss', js: 'application.js', js_compressor: :uglifier
  plugin :render, engine: 'slim'
  plugin :public
  plugin :hooks
  plugin :json
  compile_assets if ENV['RACK_ENV'] == 'production'

  def self.root
    @@root ||= Pathname.new(File.dirname(__FILE__))
  end

  route do |r|
    r.root { view :index }
    r.public
    r.assets unless ENV['RACK_ENV'] == 'production'
  end
end
